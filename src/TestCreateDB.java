import java.sql.*;
import java.util.ArrayList;

/**
 * This is a testing class.
 * Useless.
 * Please ignore it.
 */
public class TestCreateDB {
    private static final String JDBC_DRIVER = "org.sqlite.JDBC";

    private static final String DATABASE_LOCATION = "jdbc:sqlite:";

    protected Connection connection = null;

    protected Connection backUpConnection = null;

    public String dbName = null;

    public void notify( String message, Exception e ) {
		System.out.println( message + " : " + e );
		e.printStackTrace ( );
		System.exit( 0 );
	}

    public void startConnection(){
        try{
            connection = DriverManager.getConnection(DATABASE_LOCATION + dbName);
            connection.setAutoCommit(false); 
        }
        catch(SQLException sqlException){
            notify("Db.startConnection database location ["
                + DATABASE_LOCATION
                + "] db name["
                + dbName
                + "]", sqlException);
        }
    }

    public void closeConnection(){
        try{
           connection.commit();
           connection.close();
        }  
        catch (Exception exception){
            notify("Dadabases close Exception", exception);
        }
    }

    public TestCreateDB(){
		try {
            dbName = "Northwind.db";
			Class.forName( JDBC_DRIVER );
		}
		catch ( ClassNotFoundException classNotFoundException ) {
			notify( "Db Load Driver", classNotFoundException );
		}


    }
    public void debugTableInfo(){


        //testCreateDB.closeConnection();
        try {
            DatabaseMetaData databaseMetaData = connection.getMetaData();
            ResultSet rs = databaseMetaData.getTables(null,null,null,new String[]{"TABLE"});

            ArrayList<String> tableNames = new ArrayList<>();
            while(rs.next()){
                tableNames.add(rs.getString("TABLE_NAME"));
            }
            for(String tableName : tableNames){
                System.out.println("-----------------");
                System.out.println("Table Name:"+tableName+" ");

                System.out.println("Name    |Type");
                rs = databaseMetaData.getColumns(null, null, tableName, null);
                while(rs.next()){
                    System.out.println(rs.getString("COLUMN_NAME")+"|"+rs.getString("TYPE_NAME")); 
                }


                rs = databaseMetaData.getPrimaryKeys(null, null, tableName);
                System.out.print("Primary keys:" );

                
                while(rs.next()){
                    System.out.print(rs.getString("COLUMN_NAME")+", ");
                }
                System.out.println();

                //Describe foreign keys references other primary keys
                rs = databaseMetaData.getImportedKeys(null, null, tableName);
                System.out.println("Foreign Keys:");
                while(rs.next()){
                    System.out.println("("+rs.getString("FKCOLUMN_NAME")+") "+"REFERENCES "+rs.getString("PKTABLE_NAME")+"("+rs.getString("PKCOLUMN_NAME")+")");
                }

                rs = databaseMetaData.getIndexInfo(null, null, tableName, false, false);
                System.out.println("Indexes:");
                while(rs.next()){
                    System.out.println(rs.getBoolean("NON_UNIQUE") +" "+ rs.getString("INDEX_NAME")+" ON "+rs.getString("TABLE_NAME")+"("+rs.getString("COLUMN_NAME") + " " + rs.getString("ASC_OR_DESC")+")"); 
                }

                
            }
            

            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        closeConnection();
    }
    public void debugDataInfo(){


        //testCreateDB.closeConnection();
        try {
            DatabaseMetaData databaseMetaData = connection.getMetaData();
            ResultSet rs = databaseMetaData.getTables(null,null,null,new String[]{"TABLE"});

            ArrayList<String> tableNames = new ArrayList<>();
            while(rs.next()){
                tableNames.add(rs.getString("TABLE_NAME"));
            }
            

            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        closeConnection();
    }
}
