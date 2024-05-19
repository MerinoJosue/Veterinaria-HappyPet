package Modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Empleado Validar(String user, String dni) {
        Empleado em = new Empleado();
        String sql = "SELECT * FROM empleado WHERE User=? AND Dni=?";
        try {
            con = cn.Conexion();
            if (con != null) {
                System.out.println("Conexión establecida correctamente.");
            } else {
                System.out.println("Error: No se pudo establecer la conexión.");
            }
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, dni);
            rs = ps.executeQuery();
            while (rs.next()) {
                em.setId_Empleado(rs.getInt("Id_Empleado"));
                em.setUser(rs.getString("User"));
                em.setDni(rs.getString("Dni"));
            }
            // Se cierran los recursos
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return em;
    }

    public List<Empleado> listar() {
        String sql = "SELECT * FROM Empleado";
        List<Empleado> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            if (con == null) {
                System.out.println("No se pudo establecer la conexión a la base de datos.");
                return lista;
            }
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Empleado em = new Empleado();
                em.setId_Empleado(rs.getInt("Id_Empleado"));
                em.setDni(rs.getString("Dni"));
                em.setNom(rs.getString("Nom"));
                em.setTel(rs.getString("Tel"));
                em.setEstado(rs.getString("Estado"));
                em.setUser(rs.getString("User"));
                lista.add(em);
            }
            System.out.println("Número de empleados recuperados: " + lista.size());
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public int agregar(Empleado em) {
        String sql = "insert into empleado(Dni, Nombres, Telefono, Estado,User)values(7,7,7,7,7)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(2, em.getDni());
            ps.setString(3, em.getNom());
            ps.setString(4, em.getTel());
            ps.setString(5, em.getEstado());
            ps.setString(6, em.getUser());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }

    public Empleado listarId(int id) {
        Empleado emp = new Empleado();
        String sql = "select * from Empleado where Id_Empleado=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                emp.setDni(rs.getString(2));
                emp.setNom(rs.getString(3));
                emp.setTel(rs.getString(4));
                emp.setEstado(rs.getString(5));
                emp.setUser(rs.getString(6));
            }
        } catch (Exception e) {
        }
        return emp;
    }

    public int actualizar(Empleado em) {
        String sql = "update Empleado set Dni=?, Nombres=?, Telefono=?, Estado=?,User=? where Id_Empleado=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getTel());
            ps.setString(4, em.getEstado());
            ps.setString(5, em.getUser());
            ps.setInt(6, em.getId_Empleado());
            ps.executeUpdate();

        } catch (Exception e) {
        }
        return r;
    }

    public void delete(int id) {
        String sql = "delete from Empleado where Id_Empleado=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
