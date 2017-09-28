/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alumno
 */
public class UsuarioDao extends Dao{
    
    public void insert(Usuario usuario){
        try {
            Connection conn = this.getConexion();
            
            if(conn == null)
                return;
            
            PreparedStatement ps = conn.prepareStatement("INSERT INTO usuario VALUES (null, ?, ?, ?)");
            ps.setInt(1, usuario.getDni());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getApellido());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void update(Usuario usuario){
        try {
            Connection conn = this.getConexion();
            
            if(conn == null)
                return;
            
            PreparedStatement ps = conn.prepareStatement("UPDATE usuario SET dni = ?, nombre = ?, apellido = ? WHERE id = ?");
            ps.setInt(1, usuario.getDni());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getApellido());
            ps.setInt(4, usuario.getId());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Usuario getById(int id){
        try {
            Connection conn = this.getConexion();
            Statement s = conn.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM usuario WHERE id = " + id);
            rs.next();
            
            Usuario usuario = new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setDni(rs.getInt("dni"));
            usuario.setNombre(rs.getString("nombre"));
            usuario.setApellido(rs.getString("apellido"));
            
            return usuario;
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }        
    }
    
    public void delete(Usuario usuario){
        try {
            Connection conn = this.getConexion();
            
            if(conn == null)
                return;
            
            PreparedStatement ps = conn.prepareStatement("DELETE FROM usuarios WHERE id = ?");
            ps.setInt(1, usuario.getId());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public LinkedList<Usuario> getAll(){
        try {            
            Connection conn = this.getConexion();
            
            if(conn == null)
                return null;
            
            Statement s = conn.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM usuario");
            
            return this.parseResultSetToLinkedList(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public LinkedList<Usuario> getByAllFields(String valorBuscado){
        try {            
            Connection conn = this.getConexion();
            
            if(conn == null)
                return null;
            
            Statement s = conn.createStatement();
            
            String query = "SELECT * FROM usuario";
            query += " where dni like '%"+ valorBuscado + "%' "
                        + " or nombre like '%"+ valorBuscado + "%'"
                        + " or apellido like '%"+ valorBuscado + "%'";
            ResultSet rs = s.executeQuery(query);
            return this.parseResultSetToLinkedList(rs);            
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    private LinkedList<Usuario> parseResultSetToLinkedList(ResultSet rs){
        try {
            LinkedList<Usuario> lista = new LinkedList<Usuario>();
            while(rs.next()){
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setDni(rs.getInt("dni"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setApellido(rs.getString("Apellido"));
                lista.add(usuario);
            }
            return lista;
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}


