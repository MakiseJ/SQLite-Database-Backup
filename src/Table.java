import java.util.ArrayList;

/**
 * This is a Table class
 */
public class Table {
    private String name;
    private ArrayList<ColumnInfo> columnInfos;
    private ArrayList<ForeignKey> foreignKeys;

    private String primaryKeyName;
    private ArrayList<String> primaryKeys;


    public void addColunmInfo(ColumnInfo _columnInfo){
        columnInfos.add(_columnInfo);
    }
    public ColumnInfo getColumnInfoWithName (String columnName){
        for(ColumnInfo columnInfo : columnInfos){
            if(columnInfo.getName().equals(columnName)) return columnInfo;
        }
        return null;
    }

    public String getName(){ return name; }

    public void setPrimaryKeyName(String _primaryKeyName) { primaryKeyName = _primaryKeyName; }
    public ArrayList<ColumnInfo> getColumnInfos() { return columnInfos; }

    public ArrayList<ForeignKey> getForeignKeys() { return foreignKeys; }

    public void addPrimaryKey(String _primaryKey) { primaryKeys.add(_primaryKey);}

    public ArrayList<String> getPrimaryKeys() { return primaryKeys; }

    public void addForeignKey(String fKName,String targetTable,String targetPKName) { foreignKeys.add(new ForeignKey(fKName, targetTable, targetPKName)); }

    /**
     * This method will check if this table can be created based on given tables
     * @param createdTables the tables that already created
     * @return true - this table can be created; false - cannot create this table
     */
    public boolean isCreatableTable(ArrayList<Table> createdTables){
        for(ForeignKey foreignKey : foreignKeys){
            boolean foundRef = false;
            for(Table createdTable : createdTables){
                if(foreignKey.targetTable.equals(createdTable.getName())) {
                    foundRef = true;
                    break;
                }
            }
            if(!(foundRef || foreignKey.targetTable.equals(name))) return false;
        }
        return true;
    }

    /**
     * This method is to get Create statement of the tabls
     * @return the corresponding create statement
     */
    public String getCreateStatement(){
        String statemenString;
        statemenString = "CREATE TABLE `" + name + "` (";
        for(ColumnInfo columnInfo : columnInfos){
            statemenString += columnInfo.getName() + " ";
            statemenString += columnInfo.getDataType();
            if(!columnInfo.isNullAble()) statemenString += " NOT NULL";
            if(columnInfo.isUnique()) statemenString += " UNIQUE";
            statemenString +=", ";
        }

        if(!(primaryKeyName == null || primaryKeyName.equals(""))) statemenString += "CONSTRAINT " + primaryKeyName +" ";
        statemenString += "PRIMARY KEY (";
        for(String primaryKey : primaryKeys){
            statemenString += primaryKey;
            statemenString += primaryKey != primaryKeys.get(primaryKeys.size() - 1)? ", ":")";
        }

        if(!foreignKeys.isEmpty()) statemenString += ", ";
        for(ForeignKey foreignKey : foreignKeys){
            statemenString += "FOREIGN KEY (";
            statemenString += foreignKey.fKName + ") REFERENCES ";
            statemenString += foreignKey.targetTable + "(";
            statemenString += foreignKey.targetPKName + ")" + (foreignKey != foreignKeys.get(foreignKeys.size() - 1)? ", ":"");
        }

        statemenString += ") ";
        return statemenString;
    }

    public void printForeignKeys(){ 
        System.out.println("Table: " + name);
        for(ForeignKey foreignKey : foreignKeys) System.out.println(foreignKey); 
    }
    
    public Table(String _name){
        name = _name;
        primaryKeyName = "";
        columnInfos = new ArrayList<>();
        foreignKeys = new ArrayList<>();
        primaryKeys = new ArrayList<>();
    }

}
