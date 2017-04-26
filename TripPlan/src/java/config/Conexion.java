/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Cristian
 */
public class Conexion {
    
    private static Connection conexion;
    private static Statement sentencia;
    public ResultSet resultado;

    public Conexion() {

        try {
            Class.forName("org.postgresql.Driver").newInstance();
            conexion = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/trip_plan", "postgres", "admin");
            sentencia = (Statement) conexion.createStatement();
        } catch (ClassNotFoundException er) {
            System.out.println("Error de conexión" + er.getMessage());
        } catch (InstantiationException er) {
            System.out.println("Error de conexión" + er.getMessage());
        } catch (IllegalAccessException er) {
            System.out.println("Error de conexión" + er.getMessage());
        } catch (SQLException er) {
            System.out.println("Error de conexión" + er.getMessage());
        }
    }
    
    public boolean insertar(String cadena) throws SQLException {
        sentencia.execute(cadena);
        return true;
    }

    public ResultSet consultar(String cadena) {
        try {
            return sentencia.executeQuery(cadena);
        } catch (SQLException ex) {
            System.out.println("Error consultando = " + ex.getMessage());
            return null;
        }

    }
}
