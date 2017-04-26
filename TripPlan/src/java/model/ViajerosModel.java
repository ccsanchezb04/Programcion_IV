/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import config.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Cristian
 */
public class ViajerosModel {
    
    Conexion cnx = new Conexion();
    
    private String cadenaSql;
    
    public void insertarReg() throws SQLException{
        
        cadenaSql = "select coutn(*) as cantidad from tp_trav";
    }
    
    /*public ResultSet consultarReg(String docViajero) throws SQLException{
        
        
        
        return rs;
    }*/
}
