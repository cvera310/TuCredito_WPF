using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace TuCredito_WPF
{
    /// <summary>
    /// Lógica de interacción para w_Cliente.xaml
    /// </summary>
    public partial class w_Cliente : Window
    {
        TPEntities db;
        //PrestamoEntities db;
        //CreditoEntities db;
        public w_Cliente()
        {
            InitializeComponent();
            //  db = new CreditoEntities();
            db = new TPEntities();
            //db = new PrestamoEntities();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            CargarGrilla();
        }


        void CargarGrilla()
        {

            dgClientes.ItemsSource = db.Cliente.ToList();
          

        }

        void LimpiarPantalla()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtNroDoc.Text = "";
            txtRazonSocial.Text = "";
            txtTelefono.Text = "";
            txtDireccion.Text = "";
            txtLugarTrabajo.Text = "";
            txtAntiguedad.Text = "";
            txtDireccionLaoral.Text = "";
        }

        private void BtnAgregar_Click(object sender, RoutedEventArgs e)
        {

            try
            {
                Cliente c = new Cliente();
                c.Nombre = txtNombre.Text;
                c.Apellido = txtApellido.Text;

                if (chkCIP.IsChecked == true)
                    c.TipoDocumento = 1;
                else
                    c.TipoDocumento = 2;

                c.Documento = txtNroDoc.Text;

                if (rbnHombre.IsChecked == true)
                    c.Sexo = 1;
                else
                    c.Sexo = 2;

                c.RazonSocial = txtRazonSocial.Text;
                c.Nacimiento = dtpNacimiento.SelectedDate.Value;
                c.Telefono = txtTelefono.Text;
                c.Direccion = txtDireccion.Text;
                c.LugarTrabajo = txtLugarTrabajo.Text;
                c.AntiguedadLaboral = Convert.ToInt32(txtAntiguedad.Text);
                c.DireccionLaboral = txtDireccionLaoral.Text;

                db.Cliente.Add(c);
                db.SaveChanges();

                CargarGrilla();
                LimpiarPantalla();

                MessageBox.Show("Registro Agregado Correctamente");
            }
            catch (Exception err)
            {

                MessageBox.Show(err.Message);
            }

            

        }

        private void BtnModificar_Click(object sender, RoutedEventArgs e)
        {
            if (dgClientes.SelectedItem != null)
            {
                Cliente c = (Cliente)dgClientes.SelectedItem;
                c.Nombre = txtNombre.Text;
                c.Apellido = txtApellido.Text;

                if (chkCIP.IsChecked == true)
                    c.TipoDocumento = 1;
                else
                    c.TipoDocumento = 2;

                c.Documento = txtNroDoc.Text;

                if (rbnHombre.IsChecked == true)
                    c.Sexo = 1;
                else
                    c.Sexo = 2;

                c.RazonSocial = txtRazonSocial.Text;
                c.Nacimiento = dtpNacimiento.SelectedDate.Value;
                c.Telefono = txtTelefono.Text;
                c.Direccion = txtDireccion.Text;
                c.LugarTrabajo = txtLugarTrabajo.Text;
                c.AntiguedadLaboral = Convert.ToInt32(txtAntiguedad.Text);
                c.DireccionLaboral = txtDireccionLaoral.Text;

                db.Entry(c).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();

                CargarGrilla();
            }
        }

        private void BtnEliminar_Click(object sender, RoutedEventArgs e)
        {

            try
            {
                if (dgClientes.SelectedItem != null)
                {
                    Cliente c = (Cliente)dgClientes.SelectedItem;
                    db.Cliente.Remove(c);

                    db.SaveChanges();

                    CargarGrilla();

                    MessageBox.Show("Registro Eliminado Correctamente");
                }
            }
            catch (Exception err)
            {

                MessageBox.Show(err.Message);
            }


            
        }

        private void DgClientes_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (dgClientes.SelectedItem != null)
            {
                Cliente c = (Cliente)dgClientes.SelectedItem;
                txtId.Text = c.NumeroCliente.ToString();
                txtNombre.Text = c.Nombre;
                txtApellido.Text = c.Apellido;

                if (c.TipoDocumento== 1) { 
                    chkCIP.IsChecked = true;
                }
                else { 
                    chkPasaporte.IsChecked = true;
                }
                txtNroDoc.Text = c.Documento;


                if (c.Sexo == 1) { 
                    rbnHombre.IsChecked = true;
                }
                else { 
                    rbnMujer.IsChecked = true;
                }
                txtRazonSocial.Text = c.RazonSocial;
                dtpNacimiento.SelectedDate = c.Nacimiento;
               
               
                txtTelefono.Text = c.Telefono;
                txtDireccion.Text = c.Direccion;
                txtLugarTrabajo.Text = c.LugarTrabajo;
                txtDireccionLaoral.Text = c.DireccionLaboral;
                txtAntiguedad.Text = c.AntiguedadLaboral.ToString();
                
                 

            }
        }
    }
}
