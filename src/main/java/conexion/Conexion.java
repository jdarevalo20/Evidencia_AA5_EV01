package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    // Configuración de la base de datos
    private static final String URL = "jdbc:mysql://localhost:3306/sof_artmueble";
    private static final String USER = "root";
    private static final String PASSWORD = "Luciana.2012";

    // Variable para la conexión
    private static Connection connection = null;

    // Método para obtener la conexión
    public static Connection getConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            try {
                // Cargar el driver de MySQL
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                // Establecer la conexión
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
            } catch (ClassNotFoundException e) {
                throw new SQLException("Driver de MySQL no encontrado.", e);
            }
        }
        return connection;
    }
    
    // Método para cerrar la conexión
    public static void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

