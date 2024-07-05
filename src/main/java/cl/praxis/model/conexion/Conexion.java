package cl.praxis.model.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//Singleton
public class Conexion {
	
	private static Connection con = null;
	
	//Constructor
	private Conexion() {
		//logica de la conexion a la BD	
		try {
			
			Class.forName("org.postgresql.Driver");//porque eto es postgresql
			
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/desafio_proveedores","postgres", "12345678");
			boolean isValid = con.isValid(5000);
			
			System.out.println(isValid ? "TEST OK POSTGRESQL" : "TEST FAILED POSTGRESQL");
			
		}catch(ClassNotFoundException | SQLException ex) {
			System.out.println("Error al conectar con la BD: " + ex.getMessage());
		}
	}

	public static Connection getCon() {
		//Si con es nulo llama al contructor
		if(con == null) {
			new Conexion();
		}
		return con;
	}
}