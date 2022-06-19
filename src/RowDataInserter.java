import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;

/*
 * This is a row inserter
 * It will insert a row into the corresponding table with foreign key check and broken value check
 */
public class RowDataInserter {
    private ArrayList<Data> row;
    private Table table;
    private PreparedStatement preInsertStatement;
    private ResultSet foreignKeySets;
    private Connection targetDbConnection;

    /**
     * 
     * @param _table the corresponding table
     * @param targetDb the connection that connecting to the db which need to be inserted values. 
     */
    public RowDataInserter(Table _table, Connection targetDb){
        row = new ArrayList<>();
        table = _table;
        targetDbConnection = targetDb;
        prepareInsertStatement(targetDb);
    }
    

    /**
     * Insert a row into the table
     * Note that the insert will be executed in this method and the return String is only used to SQL file, not to execute query again.
     * @param resultSet a resultset with values
     * @return a SQL statement with INSERT SQL query.
     * 
     */
    public String insertRow(ResultSet resultSet){
        try {
            for(int i = 0; i < table.getColumnInfos().size(); i++){
                int columnIndex = i + 1;
                ColumnInfo columnInfo = table.getColumnInfos().get(i);
                Data newData = null;
                String dataType = columnInfo.getDataType();
                String columnName = columnInfo.getName();
                if(dataType.contains("INT")){
                    int currentInt = resultSet.getInt(columnName);
                    if(currentInt==0 && columnInfo.isNullAble()) {
                        newData = new Data<String>("NULL");
                        preInsertStatement.setNull(columnIndex, Types.INTEGER);
                    }
                    else {
                        newData = new Data<Integer>((Integer)currentInt);
                        preInsertStatement.setInt(columnIndex, currentInt);
                    }
                }
                if(dataType.contains("VARCHAR")){
                    String currentString = resultSet.getString(columnName);
                    //currentString = "You got bamboozled!";
                    if(currentString == null){
                        preInsertStatement.setNull(columnIndex, Types.VARCHAR);
                        newData = new Data<String>("NULL");
                    }
                    else{
                        preInsertStatement.setString(columnIndex, currentString);

                        currentString = currentString.replace("\'", "\'\'");
                        newData = new Data<String>("\'"+currentString+"\'");
                    } 
                }
                if(dataType.contains("DATE")|| dataType.contains("TIMESTAMP")){
                    String currentString = resultSet.getString(columnName);
                    preInsertStatement.setString(columnIndex, currentString);
                    newData = (new Data<String>("\""+currentString+"\""));
                }
                if(dataType.contains("NUMERIC")||dataType.contains("FLOAT")){
                    String currentFloat = resultSet.getString(columnName);
                    newData = (new Data<String>(currentFloat));
                    preInsertStatement.setString(columnIndex, currentFloat);
                }
                if(dataType.contains("TEXT")||dataType.contains("BLOB")||dataType.contains("CLOB")){
                    InputStream contentInputStream = resultSet.getBinaryStream(columnName);
                    if(contentInputStream != null){
                        byte[] contentBytes = contentInputStream.readAllBytes();
                        String contentStr = new String(contentBytes);

                        preInsertStatement.setString(columnIndex, contentStr);
                        contentStr = contentStr.replace("\'", "\'\'");
                        newData = (new Data<String>("\'"+contentStr+"\'"));
                    }
                    else {
                        newData = new Data<String>("NULL");
                        preInsertStatement.setNull(columnIndex, Types.BLOB);
                    }
                }
                
                // check foreign key
                if(newData!=null && checkFkExist(resultSet,columnInfo)){
                    row.add(newData);
                }
                // give up insertion if there is no corresponding key value
                else{
                    row.clear();
                    return "";
                }
            }
            preInsertStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        if(row.size() == 0) return "";
        String insertString = "INSERT INTO `"+table.getName()+"` VALUES (";
        for(Data data : row){
            insertString += data.data;
            insertString += data == row.get(row.size() - 1)? ")":",";
        }
        row.clear();
        return insertString;
    }

    // Chech foreign keys, if true, the value can be inserted
    private boolean checkFkExist(ResultSet checkedResultSet, ColumnInfo columnInfo) throws SQLException, IOException {
        boolean fkHit = false;
        String targetPkStr;
        String columnName = columnInfo.getName();
        String dataType = columnInfo.getDataType();
        for(ForeignKey foreignKey : table.getForeignKeys()){
            if(foreignKey.fKName.equals(columnName)){
                fkHit = true;
                Statement statement = targetDbConnection.createStatement();
                targetPkStr = foreignKey.targetPKName;
                foreignKeySets = statement.executeQuery("SELECT `"+ targetPkStr + "` FROM `" + foreignKey.targetTable + "`" );
            }
        }
        if (!fkHit) return true;
        else{
            if(dataType.contains("INT")){
                int checkedInt = checkedResultSet.getInt(columnName);
                if(checkedInt == 0 ) return true;
                
                while (foreignKeySets.next())  {
                    int otherPkInt = foreignKeySets.getInt(1);
                    if(checkedInt == 0 || checkedInt == otherPkInt) return true;
                }
            }
            if(dataType.contains("TEXT")||dataType.contains("BLOB")){
                InputStream checkedInputStream = checkedResultSet.getBinaryStream(columnName);
                if(checkedInputStream == null) return true;
                while (foreignKeySets.next()) {
                    InputStream otherPkInputStream = foreignKeySets.getBinaryStream(1);    

                    byte[] checkedBytes = checkedInputStream.readAllBytes();
                    String checkedStr = new String(checkedBytes);
    
                    byte[] otehrPkBytes = otherPkInputStream.readAllBytes();
                    String otherPkStr = new String(otehrPkBytes);
                    if(checkedInputStream == null || otherPkStr.equals(checkedStr)) return true;
                }
            }
            else{
                String checkedString = checkedResultSet.getString(columnName);
                if(checkedString == null) return true;

                while (foreignKeySets.next())  {
                    String otherPkString = foreignKeySets.getString(1);                        
                    if(checkedString == null || otherPkString.equals(checkedString)) return true;
                }
            }
        }
        return false;
    }

    private void prepareInsertStatement(Connection targetDb){
        try {
            String preparedString = "INSERT INTO `"+table.getName()+"` VALUES (";
            for(int i = 0 ; i < table.getColumnInfos().size() - 1 ; i++){
                preparedString += "?, ";
            }
            preparedString += "?)";
            preInsertStatement = targetDb.prepareStatement(preparedString);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // This is a Data class to store different types of data
    private class Data<Type> {
        public Type data; 
        public Data(Type _data){ data = _data; }
    }

}
