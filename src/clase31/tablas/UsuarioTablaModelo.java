/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase31.tablas;

/**
 *
 * @author alumno
 */
public class UsuarioTablaModelo extends TablaModelo{
    
    private String[] columnas = {"ID", "DNI", "Nombre", "Apellido"};   
    
    public UsuarioTablaModelo(){                
        this.setColumnas(this.columnas);        
    }
}
