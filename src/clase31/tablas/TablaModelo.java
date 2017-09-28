/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase31.tablas;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author alumno
 */
public class TablaModelo extends DefaultTableModel{
    
    public TablaModelo(){        
    }
    
    public void setColumnas(String[] columnas){
        for (String columna : columnas) {
            this.addColumn(columna);
        }
    }
}
