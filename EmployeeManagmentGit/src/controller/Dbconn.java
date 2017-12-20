package controller;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbconn {
    public static Connection con;
    public static Statement st;
    
    static String url="jdbc:mysql://localhost:3306/";
    static String driver="com.mysql.jdbc.Driver";
    static String db="employeemanagement";
    static String uname="root";
    static String pass="";
    
    public static Statement connectDB() throws ClassNotFoundException, SQLException
    {
         if (con == null) {
        Class.forName(driver);
        con=DriverManager.getConnection(url+db, uname, pass);
        st=con.createStatement();
         }
        return st;
    }
    
}
