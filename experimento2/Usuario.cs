namespace experimento2
{
    using System;

    public class Usuario
    {
        private int idUsuario;
        private DateTime nacimiento;
        private string nombre;
        private string apellido;
        private string email;
        private string contraseña;
        private string telefono;
        private string nombreUsuario;
        private int baja;

        //crear constructor
        public Usuario()
        {
        }

        public Usuario(int idUsuario, DateTime nacimiento, string nombre, string apellido,
            string email, string contraseña, string telefono, string nombreUsuario, int baja)
        {
            this.idUsuario = idUsuario;
            this.nacimiento = nacimiento;
            this.nombre = nombre;
            this.apellido = apellido;
            this.email = email;
            this.contraseña = contraseña;
            this.telefono = telefono;
            this.nombreUsuario = nombreUsuario;
            this.baja = baja;
        }

        public int IdUsuario { get => idUsuario; set => idUsuario = value; }
        public DateTime Nacimiento { get => nacimiento; set => nacimiento = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Email { get => email; set => email = value; }
        public string Contraseña { get => contraseña; set => contraseña = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string NombreUsuario { get => nombreUsuario; set => nombreUsuario = value; }
        public int Baja { get => baja; set => baja = value; }
    }






}