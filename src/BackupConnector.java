import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.*;

/*
 * A backup Connector, it is based on the DbBasic in Lab2
 * To backup db, it has two Conntection members.
 */
public class BackupConnector {
    private static final String JDBC_DRIVER = "org.sqlite.JDBC";

    private static final String DATABASE_LOCATION = "jdbc:sqlite:";

    protected Connection originDbConnection = null;

    protected Connection backupDbConnection = null;

    public String originDbName = null;
    public String backupDbName = null;
    private File backupSQLFile;
    protected FileOutputStream outputStream;

    public void notify( String message, Exception e ) {
		System.out.println( message + " : " + e );
		e.printStackTrace ( );
		System.exit( 0 );
	}

    public void startConnection(){
        try{
            originDbConnection = DriverManager.getConnection(DATABASE_LOCATION + originDbName);
            originDbConnection.setAutoCommit(false); 

            backupDbConnection = DriverManager.getConnection(DATABASE_LOCATION + backupDbName);
            backupDbConnection.setAutoCommit(false); 
        }
        catch(SQLException sqlException){
            notify("Db.startConnection database location ["
                + DATABASE_LOCATION
                + "] db name["
                + originDbConnection + backupDbName
                + "]", sqlException);
        }
    }

    public void closeConnection(){
        try{
            originDbConnection.commit();
            originDbConnection.close();

            backupDbConnection.commit();
            backupDbConnection.close();

            outputStream.close();
        }  
        catch (Exception exception){
            notify("Dadabases close Exception", exception);
        }
    }

    public BackupConnector(String _originDbName){
        try {
            File folder = new File("out");
            folder.mkdir();

            originDbName = _originDbName;
            backupDbName = "out\\"+originDbName.split("\\.")[0]+"_backup.db";
            backupSQLFile = new File("out\\"+_originDbName.split("\\.")[0]+"_backup.sql");
            outputStream = new FileOutputStream(backupSQLFile);
            //System.out.println(backupDbName);
			Class.forName( JDBC_DRIVER );
		}
		catch ( ClassNotFoundException classNotFoundException ) {
			notify( "Db Load Driver", classNotFoundException );
		} catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            notify( "Db Load Driver", e );
        }

        startConnection();
    }
}
