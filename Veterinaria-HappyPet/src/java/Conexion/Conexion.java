package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    Connection con;
    String url = "jdbc:mysql://localhost:3306/happypet_prueba";
    String user = "root";
    String pass = "";

    public Connection Conexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass); 
        } catch (Exception e) {
            e.printStackTrace(); 
        }
        return con;
    }

}
