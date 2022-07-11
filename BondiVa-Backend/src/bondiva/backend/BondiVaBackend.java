
package bondiva.backend;

import java.sql.Connection;
import java.sql.SQLException;

public class BondiVaBackend {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws SQLException {
        Conexion2 mi_conexion = new Conexion2();
        Connection conexion = mi_conexion.getConexion();
        
    }
    
}
