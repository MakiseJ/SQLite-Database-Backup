
/**
 * It is a backupDb Executer
 */
public class BackupExecuter {
    private DbBackup dbBackup;
    boolean needInsert;

    public BackupExecuter(String dbName){
        dbBackup = new DbBackup(dbName);
        needInsert = true;
    }

    public void setNeedInsert(boolean _needInsert){ needInsert = _needInsert; }

    /*
     * start backup provided database
     */
    public void startBackUp(){
        if(needInsert) System.out.println("Start Backup..."); 
        else System.out.println("Start Backup Empty Tables..."); 
        dbBackup.createTables();
        dbBackup.createIndex();
        if(needInsert) dbBackup.insertValues();
        dbBackup.closeConnection();
        System.out.println("Backup complete. Please see \'out\' folder");
    }
}
