package cl.praxis.model.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private static Connection con = null;

    // Constructor privado para evitar instanciación externa
    private Conexion() {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/desafio_proveedores", "postgres", "12345678");
            System.out.println("Conexión establecida correctamente a PostgreSQL");
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Error al conectar con la BD: " + ex.getMessage());
        }
    }

    public static Connection getCon() {
        if (con == null) {
            synchronized (Conexion.class) {
                if (con == null) {
                    new Conexion(); // crea la instancia de conexión
                }
            }
        }
        try {
            if (!con.isValid(5000)) { // verifica si la conexión sigue válida
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/desafio_proveedores", "postgres", "12345678");
            }
        } catch (SQLException e) {
            System.out.println("Error al validar la conexión: " + e.getMessage());
        }
        return con;
    }
}
