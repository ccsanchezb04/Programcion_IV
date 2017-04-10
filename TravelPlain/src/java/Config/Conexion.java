/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Cristian
 */
public class Conexion {
    
    
    public void openBD() {
        Connection conn = null;
        String urlDatabase =  "jdbc:postgresql://localhost:5432/trip_plan"; 
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(urlDatabase,  "postgres", "admin");
        } catch (Exception e) {
            System.out.println("Ocurrio un error : "+e.getMessage());
        }
        System.out.println("La conexión se realizo sin problemas! =) ");
    }
}
