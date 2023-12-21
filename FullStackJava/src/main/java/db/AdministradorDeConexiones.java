package db;
import java.sql.Connection;
import java.sql.DriverManager;


public class AdministradorDeConexiones {
	// Creamos un metodo estatico (No hay necesidad de instanciar un objeto para usar el metodo)
	public static Connection getConnection() {
		String hosts = "localhost";
		String port = "3306";
		String password = "";
		String username = "root";
		String nombredb = "integradorBD";
		
		// Drive de conexion a la base de datos
		String driveClassName = "com.mysql.cj.jdbc.Driver";
		// Aplico manejo de excepciones.
		Connection connection;
		try {
			// com.mysql.cj.jdbc Contruye una clase a partir de un objeto compilado
			Class.forName(driveClassName);
			// URL de conexion
			String url = "jdbc:mysql://"+hosts+":"+port+"/"+nombredb+"?serverTimeZone=UTC&useSSL=false";
			connection = DriverManager.getConnection(url, username, password);
			
		} catch (Exception e){
			connection = null;
		}
		
		return connection;
	}
}