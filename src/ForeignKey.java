/**
 * this is a foreign key class
 */
public class ForeignKey{
    public String fKName;
    public String targetTable;
    public String targetPKName;

    public ForeignKey(String _fKName,String _targetTable,String _targetPKName){
        fKName = _fKName;
        targetTable = _targetTable;
        targetPKName = _targetPKName;
    }
    
    public String toString(){
        return "("+fKName+") "+"REFERENCES "+targetTable+"("+targetPKName+")";
    }
} 