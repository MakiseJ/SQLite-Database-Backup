import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

/**
 * @author: Joey Chen
 * This is the backup class. 
 */
public class DbBackup extends BackupConnector {
    private ResultSet resultSet;
    private ArrayList<Table> unCreatedTables;
    private ArrayList<Table> createdTables;
    private ArrayList<Index> indexes;
    private DatabaseMetaData databaseMetaData;
    private Statement statement;
    private RowDataInserter rowDataInserter;

    /**
     * create tables
     * after creating tables, the table will be changed from "unCreatedTables" to "createdTables"
     */
    public void createTables(){
        try {
            System.out.println("Creating Tables...");
            statement = backupDbConnection.createStatement();

            // Sort the tables so that they can be created in order without foreign key mismatch
            while(!unCreatedTables.isEmpty()){
                Table table = getCreatableTable();
                createdTables.add(table);unCreatedTables.remove(table);
            }

            // Drop existed tables firstly
            Table newTable;
            String tableString;
            for(int i = createdTables.size() - 1; i>=0; i--){
                newTable = createdTables.get(i);
                tableString = "DROP TABLE IF EXISTS `" + newTable.getName() + "`";
                writeStatement(tableString);
                statement.executeUpdate(tableString);
            }

            //Create tables
            for(Table table : createdTables){
                tableString = table.getCreateStatement();
                statement.executeUpdate(tableString);
                writeStatement(tableString);
                //System.out.println(tableString);
            }
            System.out.println("Create Tables Complete.");
        } catch (SQLException e) {
            notify("DbBackup.createTables", e);
        }
    }

    /**
     * Create index for tables.
     */
    public void createIndex(){
        try {
            System.out.println("Creating Indexes...");
            statement = backupDbConnection.createStatement();
            for(Index index : indexes){
                String createIndexString = index.getCreateIndexString();
                
                statement.executeUpdate(createIndexString);

                writeStatement(createIndexString);
                //System.out.println(createIndexString);
            }
            System.out.println("Create Indexes Complete.");
        } catch (SQLException e) {
            notify("DbBackup.createIndex", e);
        }
    }

    /*
     * Insert values into all tables
     */
    public void insertValues(){
        try {
            System.out.println("Inserting Data...");
            for(Table table : createdTables){
                System.out.println("Inserting Table: "+table.getName()+" ...");
                statement = originDbConnection.createStatement();
                resultSet = statement.executeQuery("SELECT * FROM `"+table.getName()+"`");
                rowDataInserter = new RowDataInserter(table, backupDbConnection);

                while(resultSet.next()){
                    //statement = backupDbConnection.createStatement();
                    String insertString = rowDataInserter.insertRow(resultSet);
                    writeStatement(insertString);
                    //statement.executeUpdate(insertString);
                    //System.out.println(insertString); 
                } 
                System.out.println("Insert Table: "+table.getName()+" Complete");
            }
            System.out.println("Insert Data Complete");
        } catch (SQLException e) {
            notify("DbBackup.insertValues", e);
        }

    }

    /* 
    private void addUniqueConstraints() throws SQLException{
        for(Table table : createdTables){
            for(ForeignKey foreignKey : table.getForeignKeys()){
                //System.out.println("Now checking foreign key :"+table.getName()+"("+foreignKey.fKName +") REFERENCES "+ foreignKey.targetTable +"("+foreignKey.targetPKName+")");;
                resultSet = databaseMetaData.getCrossReference("" , "" , foreignKey.targetTable , "", "" , table.getName());
                while (resultSet.next()){
                    //System.out.println("target column Name :"+resultSet.getString("PKCOLUMN_NAME"));
                    Table targetTable = getTableWithName(foreignKey.targetTable);
                    ColumnInfo targetColumnInfo = targetTable.getColumnInfoWithName(resultSet.getString("PKCOLUMN_NAME"));
                    boolean isPrimaryKey = false;
                    for(String primaryKey : targetTable.getPrimaryKeys()){
                        isPrimaryKey = primaryKey.equals(targetColumnInfo.getName());
                    }
                    if(!isPrimaryKey) targetColumnInfo.setUnique(true);
                }
            }
            
        }
    }


    private Table getTableWithName(String tableName){
        for(Table table : unCreatedTables){
            if(table.getName().equals(tableName)) return table; 
        }
        return null;
    }
    */

    /**
     * get creatable table
     * @return A table that can be created immediately
     */
    public Table getCreatableTable(){
        for(Table unCreatedTable : unCreatedTables){
            if(unCreatedTable.isCreatableTable(createdTables)) return unCreatedTable;
        }
        return null;
    }

    /**
     * This function is to write SQL statement into SQL file, it there is an empty String, it will do nothing
     * @param statementString the SQL statement
     */
    public void writeStatement(String statementString){
        try {
            if(statementString.equals("") ) return;
            outputStream.write(statementString.getBytes());
            outputStream.write(';');
            outputStream.write('\n');
        } catch (IOException e) {
            notify("DbBackup.createTables", e);
        }
    }

    /**
     * when a DbBackup is created, it will read all tables and column information immediately.
     * @param _originDbName the file name of original db
     */
    public DbBackup(String _originDbName){
        super(_originDbName);
        try {
            unCreatedTables = new ArrayList<>();
            createdTables = new ArrayList<>();
            indexes = new ArrayList<>();
            startConnection();
            databaseMetaData = originDbConnection.getMetaData();

            resultSet = databaseMetaData.getTables(null,null,null,new String[]{"TABLE"});
            while(resultSet.next()) unCreatedTables.add(new Table(resultSet.getString("TABLE_NAME")));
            
            statement = backupDbConnection.createStatement();
            
            for(Table table : unCreatedTables){


                resultSet = databaseMetaData.getColumns(null, null, table.getName(), null);
                while(resultSet.next()) table.addColunmInfo(new ColumnInfo(resultSet.getString("COLUMN_NAME"), resultSet.getString("TYPE_NAME"), resultSet.getString("IS_NULLABLE")));

                resultSet = databaseMetaData.getPrimaryKeys(null, null, table.getName());
                table.setPrimaryKeyName(resultSet.getString("PK_NAME"));
                while(resultSet.next()) table.addPrimaryKey(resultSet.getString("COLUMN_NAME"));

                resultSet = databaseMetaData.getImportedKeys(null, null, table.getName());
                while(resultSet.next()) table.addForeignKey(resultSet.getString("FKCOLUMN_NAME"), resultSet.getString("PKTABLE_NAME"), resultSet.getString("PKCOLUMN_NAME"));

                resultSet = databaseMetaData.getIndexInfo(null, null, table.getName(), false, false);
                while(resultSet.next()){
                    String indexName = resultSet.getString("INDEX_NAME");
                    if (indexName.contains("sqlite_autoindex")) break;
                    String columnName = resultSet.getString("COLUMN_NAME");
                    String ascOrDesc = resultSet.getString("ASC_OR_DESC");
                    //ascOrDesc = "D";
                    boolean isExist = false;
                    // Find if there is an existed index
                    for (Index index : indexes){
                        if(index.indexName.equals(indexName)){
                            index.addColumn(columnName, ascOrDesc);
                            isExist = true;
                            break;
                        }
                    }
                    if(!isExist) indexes.add(new Index(indexName, !resultSet.getBoolean("NON_UNIQUE"), table.getName(), columnName, ascOrDesc));
                }
            }
            //addUniqueConstraints();

        } catch (SQLException e) {
            notify("DbBackup", e);
        }
    }

}
