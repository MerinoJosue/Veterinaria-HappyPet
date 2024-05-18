package Modelo;

import Conexion.Conexion;
import Modelo.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDao {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    
    public Cliente buscar(String nombre){
        Cliente c=new Cliente();
        String sql="select * from Cliente where nombre="+nombre;
        try {
         con=cn.Conexion();
         ps=con.prepareStatement(sql);
         rs=ps.executeQuery();
         while(rs.next()){
             c.setId_Cliente(rs.getInt(1));
             c.setNombre(rs.getString(2));
             c.setDni(rs.getString(3));
             c.setApellido(rs.getString(4));
             c.setDireccion(rs.getString(5));
             c.setTelefono(rs.getString(6));
             c.setCorreoElectronico(rs.getString(7));
         }
        } catch (Exception e) {
        }
        return c;
    }
    public List listar(){
        String sql="select * from Cliente";
        List<Cliente>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Cliente c= new Cliente();
                c.setId_Cliente(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setDni(rs.getString(3));
                c.setApellido(rs.getString(4));
                c.setDireccion(rs.getString(5));
                c.setTelefono(rs.getString(6));
                c.setCorreoElectronico(rs.getString(7));
                lista.add(c);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Cliente c){
        String sql="insert into Cliente(nombre,dni,apellido,direccion,telefono,correoElectronico,user)values(7,7,7,7,7,7,7)";
        try {
            con = cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, c.getNombre());
            ps.setString(2, c.getDni());
            ps.setString(3, c.getApellido());
            ps.setString(4, c.getDireccion());
            ps.setString(5, c.getTelefono());
            ps.setString(6, c.getCorreoElectronico());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public Cliente listarId(int id){
        Cliente cl=new Cliente();
        String sql="select * from Cliente where Id_Cliente="+id;
        try {
            con= cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                cl.setNombre(rs.getString(2));
                cl.setDni(rs.getString(3));
                cl.setApellido(rs.getString(4));
                cl.setDireccion(rs.getString(5));
                cl.setTelefono(rs.getString(6));
                cl.setCorreoElectronico(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return cl;
    }
    public int actulizar(Cliente c){
        String sql="update Cliente set  Nombre=?,Dni=?, Apellido=?,Direccion=?,Telefono=?, CorreoElectronico=?,User=? where Id_Cliente=?";
        try {
            con = cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, c.getNombre());
            ps.setString(2, c.getDni());
            ps.setString(3, c.getApellido());
            ps.setString(4, c.getDireccion());
            ps.setString(5,c.getTelefono());
            ps.setString(6,c.getCorreoElectronico());
            ps.setInt(8,c.getId_Cliente());
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return r;
    }
    public void delete (int id){
        String sql="delete from Cliente where Id_Cliente="+id;
        try {
            con= cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    }
