package Modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Modelo.Cliente;

public class ClienteDao {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs; 

    public Cliente Validar(String user, String dni) {
        Cliente cl = new Cliente();
        String sql = "select * from Cliente where User=? and dni=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, dni);
            rs = ps.executeQuery(); 
            while (rs.next()) {
                cl.setId_Cliente(rs.getInt("Id_Cliente"));
                cl.setUser(rs.getString("user"));
                cl.setDni(rs.getString("dni"));
                cl.setNombre(rs.getString("Nombre"));
            }
        } catch (Exception e) {
            
            e.printStackTrace();
        }
        return cl; 
        
    }
}
