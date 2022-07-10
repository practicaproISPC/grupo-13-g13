package bondiva.backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class Conexion {
    
    public Connection getConexion() throws SQLException{
        Connection con=null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");//☺
            //Class.forName("com.Microsoft.jdbc.sqlserver.SQLServerDriver");
            System.out.println("Cargado con éxito SQL Server! ☺");
        } catch (Exception ex) {
                                System.out.println("###Error de carga###"+ex);//☺
        }
        try{
            //String connectionUrl ="jdbc:sqlserver://localhost:1433;databaseName=bondiVa_borrador;user=sa;password=*****;";
            //"jdbc:sqlserver://localhost:1433;databaseName=AdventureWorks;user=MyUserName;password=*****;"
            String connectionUrl ="jdbc:sqlserver://localhost:1433;databaseName=bondiVa_borrador;user=sa;password=Manzanilla.9;TrustServerCertificate=True;";
            con=DriverManager.getConnection(connectionUrl);
            JOptionPane.showMessageDialog(null, "Conexion establecida con éxito");
            
            Statement consulta = con.createStatement();
            ResultSet rs = consulta.executeQuery("Select * from usuarios");
            while (rs.next()){
                System.out.println(rs.getString("id_usuario")+", "+
                                   rs.getString("nombre")+", "+
                                   rs.getString("apellido")+", "+
                                   rs.getString("nom_usuario")+", "+
                                   rs.getString("email")+", "+
                                   rs.getString("contraseña")+", "+
                                   rs.getString("telefono")+", "+
                                   rs.getBoolean("baja") );
            }
        } catch (Exception ex){
            System.out.println(ex);
        }
        return con;
        
        
        
    }  
}
