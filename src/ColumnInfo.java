
/*
 * It is a ColumnInfo class, it contains the name, data type, nullable and isUnique of a column
 * 
 */
public class ColumnInfo {
    private String name;
    private String dataType;
    private boolean nullAble;
    private boolean isUnique;

    public ColumnInfo(String _name, String _dataType, String _nullAble){
        name = _name;
        dataType = _dataType;
        nullAble = _nullAble.equals("YES");
        isUnique = false;
        
    }

    public String getName() { return name; }
    public String getDataType() { return dataType; }
    public boolean isUnique() { return isUnique; }
    public void setUnique(boolean _isUnique) { isUnique = _isUnique; }
    public boolean isNullAble(){ return nullAble;}
}