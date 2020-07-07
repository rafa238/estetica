package conexion;
import java.sql.*;

public class Conexion {
    Connection con;
    
    public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_estetica", "root", "burr0510");
            System.out.println("Conectado <-------");
        }catch(Exception e){
            System.out.println("Error en la conexion <-------" + e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
}
