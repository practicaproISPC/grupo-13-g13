using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace experimento2
{
    public partial class FrmBondiVa : Form
    {

        SqlConnection conexion = new SqlConnection(@"Data Source=DESKTOP-35K14QB\;Initial Catalog=bondiVa_borrador;Integrated Security=True");
        SqlCommand comando = new SqlCommand();
        public FrmBondiVa()
        {
            InitializeComponent();
        }

        private DataTable consultarSQL(string consultaSQL)
        {
            conexion.Open();
            comando.Connection = conexion;
            comando.CommandType = CommandType.Text;
            comando.CommandText = consultaSQL;
            DataTable tabla = new DataTable();
            tabla.Load(comando.ExecuteReader());
            conexion.Close();
            return tabla;
        }

        private void cargarLista(ListBox lista, string nombreTabla)
        {
            DataTable tabla = consultarSQL("SELECT * FROM " + nombreTabla);
            lista.DataSource = tabla;
            lista.ValueMember = tabla.Columns[0].ColumnName;
            lista.DisplayMember = tabla.Columns[1].ColumnName;
            txtNombre.Clear();
            txtEmail.Clear();
            txtTelefono.Clear();
            txtNomUsuario.Clear();
            txtNombre.Focus();
        }

        private void cargarCombo(ComboBox combo, string nombreTabla)
        {
            DataTable tabla = consultarSQL("SELECT * FROM " + nombreTabla);
            combo.DataSource = tabla;
            combo.ValueMember = tabla.Columns[0].ColumnName;
            combo.DisplayMember = tabla.Columns[1].ColumnName;
            combo.DropDownStyle = ComboBoxStyle.DropDownList;
        }


        private void Form1_Load(object sender, EventArgs e)
        {
            cargarLista(lstUsuarios, "usuarios");
            cargarCombo(cbxPublicaciones, "publicaciones");

        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Seguro de abandonar la aplicación ?",
            "SALIR", MessageBoxButtons.YesNo, MessageBoxIcon.Question,
            MessageBoxDefaultButton.Button2) == DialogResult.Yes)
                this.Close();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {

            //validar
            //crear objeto
            Usuario u = new Usuario();

            u.Nombre = txtNombre.Text;
            u.Apellido = txtApellido.Text;
            u.NombreUsuario = txtNomUsuario.Text;
            u.Email = txtEmail.Text;
            u.Telefono = txtTelefono.Text;
            u.Nacimiento = dtpNacimiento.Value;
            if (chkBaja.Checked == true)
            {
                u.Baja = 1;
            }
            else u.Baja = 0;
            //INSERT

            string insertSQL = "INSERT INTO usuarios (nombre,apellido, nom_usuario,email,telefono,baja) VALUES ('" + u.Nombre + "','" +
                                                                  u.Apellido + "','" +
                                                                  u.NombreUsuario + "','" +
                                                                  u.Email + "','" +
                                                                  u.Telefono + "',"+
                                                                  u.Baja+")";

            conexion.Open();
            comando.Connection = conexion;
            comando.CommandType = CommandType.Text;
            comando.CommandText = insertSQL;
            comando.ExecuteNonQuery();
            conexion.Close();

            MessageBox.Show("Usuario cargado con exito!");

            cargarLista(lstUsuarios, "usuarios");

        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            cargarLista(lstUsuarios, "usuarios");
            btnGuardar.Enabled = true;
            lstUsuarios.Enabled = false;
            txtNombre.Clear();
            txtApellido.Clear();
            txtEmail.Clear();
            txtTelefono.Clear();
            txtNomUsuario.Clear();
            txtNombre.Focus();
        }

        private void lstUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnGuardar.Enabled = false;
        }

        //private cargarCampos(int idUsuario)
        //{
        //    DataTable tabla = consultarSQL("SELECT * FROM usuarios where id_usuario=" +idUsuario);
        //    //Usuario u = new Usuario();
        //    txtNombre.Text = u.Nombre;
        //    //u.Nombre = txtNombre.Text;
        //    //u.Apellido = txtApellido.Text;
        //    //u.NombreUsuario = txtNomUsuario.Text;
        //    //u.Email = txtEmail.Text;
        //    //u.Telefono = txtTelefono.Text;

        //}
    }
}


