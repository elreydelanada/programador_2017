/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase31;

/**
 *
 * @author alumno
 */
public class SQLError {
    
    private SQLError(){}
    
    public static String getErrorByCode(int code){
        
        String error;
        
        switch(code){
            case 1049:
                error = "Base de datos desconocida";
                break;
                
            default:
                error = "Error " + code + ": Googlealo!!!";
                break;
        }
        
        return error;
    }
}
