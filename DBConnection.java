package DataBase;



import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection implements DBInfo {

    private static Connection con;

    static {

        try {

            Class.forName(DRIVER);

            con = DriverManager.getConnection(URL, USER, PASSWORD);

            System.out.println("Database Connected Successfully");

        } catch (Exception e) {

            e.printStackTrace();
        }

    }

    public static Connection getConnection() {

        return con;
    }

}