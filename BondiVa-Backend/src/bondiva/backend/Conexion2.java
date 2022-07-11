package bondiva.backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import javax.swing.JOptionPane;


public class Conexion2 {
    
                       //Usuario[] arrayUsuarios;
                       List<Usuario> listaUsuarios = new ArrayList<Usuario>();
                       int i = 0;
                       
//                       public Usuario crearUsuario( ResultSet rs){
//                                                                Usuario u = new Usuario();
//                                                                u.setId(rs.getInt("id_usuario"));
//                                                                u.setApellido(rs.getString("apellido"));
//                                                                u.setNomUsuario(rs.getString("nom_usuario"));
//                                                                u.setEmail(rs.getString("email"));
//                                                                u.setPassword(rs.getString("contraseña"));
//                                                                u.setTelefono(rs.getString("telefono"));
//                                                                u.setBaja(rs.getBoolean("baja"));
//                       
//                       }
    
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

            String connectionUrl ="jdbc:sqlserver://localhost:1433;"+
                                  "databaseName=bondiVa_borrador;"+
                                  "user=sa;"+
                                  "password=Manzanilla.9;"+
                                  "TrustServerCertificate=True;";
            
            con=DriverManager.getConnection(connectionUrl);
            JOptionPane.showMessageDialog(null, "Conexion establecida con éxito");
            
            Statement consulta = con.createStatement();
            ResultSet rs = consulta.executeQuery("Select * from usuarios");
            while (rs.next()){
//                System.out.println(rs.getString("id_usuario")+", "+
//                                   rs.getString("nombre")+", "+
//                                   rs.getString("apellido")+", "+
//                                   rs.getString("nom_usuario")+", "+
//                                   rs.getString("email")+", "+
//                                   rs.getString("contraseña")+", "+
//                                   rs.getString("telefono")+", "+
//                                   rs.getBoolean("baja") );

                   Usuario u = new Usuario();
                   u.setId(rs.getInt("id_usuario"));
                   u.setApellido(rs.getString("apellido"));
                   u.setNomUsuario(rs.getString("nom_usuario"));
                   u.setEmail(rs.getString("email"));
                   u.setPassword(rs.getString("contraseña"));
                   u.setTelefono(rs.getString("telefono"));
                   u.setBaja(rs.getBoolean("baja"));
                   
                   listaUsuarios.add(u);
                   
                   System.out.println(listaUsuarios.get(i).getNomUsuario()+", "
                                       +listaUsuarios.get(i).getPassword());
                   i++;
                   
                
                
                   
            }
        } catch (Exception ex){
            System.out.println(ex);
        }
        return con;
        //System.out.print(listaUsuarios);
    }  
    
    
}