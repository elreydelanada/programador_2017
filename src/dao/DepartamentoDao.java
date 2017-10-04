/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Departamento;
import entidades.Usuario;
import java.sql.Connection;
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
public class DepartamentoDao extends Dao {
    
    public LinkedList<Departamento> getByProvinciaId(int id){
        try {
            Connection conn = this.getConexion();
            Statement s = conn.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM departamento WHERE id_provincia = " + id);
            
            LinkedList<Departamento> lista = new LinkedList<>();
            
            while(rs.next()){
                Departamento dpto = new Departamento();
                dpto.setId(rs.getInt("id"));
                dpto.setDescripcion(rs.getString("descripcion"));
                dpto.setId_provincia(rs.getInt("id_provincia"));
                dpto.setId_departamento(rs.getInt("id_departamento"));
                lista.add(dpto);
            }
            return lista;
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }        
    }
}
