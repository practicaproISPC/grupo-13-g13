
package bondiva.backend;

public class Usuario {

    private int id;
    private String nombre;
    private String apellido;
    private String nomUsuario;
    private String password;
    private String email;
    private String telefono;
    private boolean baja;

    //SETTERS Y GETTERS
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getNomUsuario() {
        return nomUsuario;
    }

    public void setNomUsuario(String nomUsuario) {
        this.nomUsuario = nomUsuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public boolean isBaja() {
        return baja;
    }

    public void setBaja(boolean baja) {
        this.baja = baja;
    }

//CONSTRUCTORES
        public Usuario(int id, String nombre, String apellido, String nomUsuario, String password, String email, String telefono, boolean baja) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.nomUsuario = nomUsuario;
        this.password = password;
        this.email = email;
        this.telefono = telefono;
        this.baja = baja;
    }

    public Usuario() {
    }
    
    
}
