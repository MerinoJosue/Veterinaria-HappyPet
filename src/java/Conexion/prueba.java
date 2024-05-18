import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class prueba {

    public static void main(String[] args) {
        // Se crea una conexión a la base de datos
        Connection con = Conexion();

        if (con != null) {
            try {
                // Se prepara la consulta SQL
                String sql = "SELECT nombre FROM Cliente";

                // Se crea una sentencia preparada
                PreparedStatement stmt = con.prepareStatement(sql);

                // Se ejecuta la consulta
                ResultSet rs = stmt.executeQuery();

                // Se recorren los resultados
                while (rs.next()) {
                    String nombre = rs.getString("nombre");
                    System.out.println("Nombre del cliente: " + nombre);
                }

                // Se cierran los recursos
                rs.close();
                stmt.close();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Método para establecer la conexión a la base de datos
    public static Connection Conexion() {
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/prueba";
        String user = "root";
        String pass = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
