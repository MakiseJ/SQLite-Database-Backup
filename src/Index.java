import java.util.ArrayList;
/**
 * Thsi is an Index class
 */
public class Index {
    public String indexName;
    public boolean isUnique;
    public String tableName;
    public ArrayList<String> columnNames;
    public ArrayList<String> ascOrDescs;

    public Index(String _indexName, boolean _isUnique, String _tableName, String _columnName, String _ascOrDesc){
        columnNames = new ArrayList<>();
        ascOrDescs = new ArrayList<>();
        indexName = _indexName;
        isUnique = _isUnique;
        tableName = _tableName;

        addColumn(_columnName, _ascOrDesc);
    }

    private void addAscOrDesc(String _ascOrDesc){
        if( _ascOrDesc != null)  {
            if(_ascOrDesc.equals("A")) ascOrDescs.add(" ASC");
            else ascOrDescs.add(" DESC");
        }
        else ascOrDescs.add("");
    }

    /**
     * Some index might have multiple columns
     * Add a new column to a index
     * @param _columnName new column name
     * @param _ascOrDesc ASC or DESC, it should be "A" or "D"
     */
    public void addColumn(String _columnName, String _ascOrDesc){
        columnNames.add(_columnName);
        addAscOrDesc(_ascOrDesc);
    }

    /**
     * Get string that can be executed to create a corresponging index
     * @return
     */
    public String getCreateIndexString(){
        String createIndexString = "CREATE ";
            if(isUnique) createIndexString += "UNIQUE ";
            createIndexString += "INDEX ";
            createIndexString += indexName + " ON ";
            createIndexString += tableName +  "(";

            for(int i =0; i < columnNames.size(); i++){
                createIndexString += columnNames.get(i);
                createIndexString += ascOrDescs.get(i);
                
                createIndexString += i == (columnNames.size() - 1)? ")":", ";
            }
        return createIndexString;
    }

}
