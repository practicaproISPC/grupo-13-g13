
package bondiva.backend;

import java.sql.Connection;
import java.sql.SQLException;

public class BondiVaBackend {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws SQLException {
        Conexion mi_conexion = new Conexion();
        Connection conexion = mi_conexion.getConexion();
        
    }
    
}
