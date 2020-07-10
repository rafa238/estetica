package modelo;

import conexion.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CConsultas {
    Conexion con = new Conexion();
    Connection cn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String sql = "";
    
    public ArrayList getServicios(){
        ArrayList<Servicio> lista = new ArrayList<>();
        try {
            sql = "SELECT * FROM c_servicios";
            cn = con.getConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Servicio srv = new Servicio();
                srv.setId(rs.getInt("pk_i_servicio"));
                srv.setDetalle(rs.getString("d_v_detalle"));
                srv.setDuracion(rs.getInt("d_i_duracion"));
                srv.setPrecio(rs.getFloat("d_c_precio"));
                lista.add(srv);
            }
        } catch (SQLException ex) {
            System.out.println("---------->SQL_Error " + ex);
        }     
        return lista;
    }
    
    public boolean access(String email, String password){
        boolean access = false;
        try {
            sql = "SELECT * FROM c_usuarios WHERE d_v_correo=? AND d_v_clave=?";
            cn = con.getConnection();
            ps = cn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                access = true;
            }
        } catch (SQLException ex) {
            System.out.println("---------->SQL_Error " + ex);
        }     
        return access;
    }
    
    public Servicio getServicio(int id){
        Servicio serv = new Servicio();
        try {
            sql = "SELECT * FROM c_servicios WHERE pk_i_servicio=?";
            cn = con.getConnection();
            ps = cn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                serv.setId(id);
                serv.setDetalle(rs.getString("d_v_detalle"));
                serv.setDuracion(rs.getInt("d_i_duracion"));
                serv.setPrecio(rs.getFloat("d_c_precio"));
            }
        } catch (SQLException ex) {
            System.out.println("---------->SQL_Error " + ex);
        }     
        return serv;
    }
    
    public Usuario getUsuario(String email, String password){
        Usuario u = new Usuario();
        try {
            sql = "SELECT * FROM c_usuarios WHERE d_v_correo=? AND d_v_clave=?";
            cn = con.getConnection();
            ps = cn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                u.setId(rs.getInt("pk_i_usuario"));
                u.setRol(rs.getInt("pk_i_rolusu"));
                u.setEmail(rs.getString("d_v_correo"));
                u.setClave(rs.getString("d_v_clave"));
                u.setNombre(rs.getString("d_v_nombre"));
                u.setPaterno(rs.getString("d_v_paterno"));
                u.setTelefono(rs.getString("d_v_telefono"));
                u.setDireccion(rs.getString("d_v_direccion"));
                u.setStatus(rs.getString("w_v_status"));
            }
        } catch (SQLException ex) {
            System.out.println("---------->SQL_Error " + ex);
        }     
        return u;
    }
    
    public ArrayList getSucursales(){
        ArrayList<Sucursal> lista = new ArrayList<>();
        try {
            sql = "SELECT * FROM c_sucursales";
            cn = con.getConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Sucursal suc = new Sucursal();
                suc.setId(rs.getInt("pk_i_sucursal"));
                suc.setNombre(rs.getString("d_v_nombre"));
                suc.setDireccion(rs.getString("d_v_direccion"));
                lista.add(suc);
            }
        } catch (SQLException ex) {
            System.out.println("---------->SQL_Error " + ex);
        }     
        return lista;
    }
}
