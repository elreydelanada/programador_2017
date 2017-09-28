/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import managers.ConfigManager;

/**
 *
 * @author alumno
 */
public class Dao {
    
    public Connection getConexion(){
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            return DriverManager.getConnection("jdbc:mysql://" + ConfigManager.HOST + "/" + ConfigManager.BD, ConfigManager.USUARIO, ConfigManager.PASSWORD);
        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
