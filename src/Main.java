import java.util.Scanner;

/**
 * The main class
 * it will configurate paramaters of the backup programm
 */
public class Main {
    public static void main(String[] args) {
        BackupExecuter backupExecuter;
        

        if(args.length!=0){
            backupExecuter = new BackupExecuter(args[0]);
            if( args.length > 1 && args[1].equals("--noinsert")) backupExecuter.setNeedInsert(false);
        }
        else{
            System.out.print("Please Enter File Name of Database: ");
            Scanner scanner = new Scanner(System.in);
            String dbName = scanner.nextLine();
            scanner.close();

            backupExecuter = new BackupExecuter(dbName);
        }
        backupExecuter.startBackUp();

    }
}
