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
    /// Lógica de interacción para w_Carga_SolicitudCredito.xaml
    /// </summary>
    public partial class w_Carga_SolicitudCredito : Window
    {
        TCEntities db;
        public w_Carga_SolicitudCredito()
        {
            InitializeComponent();
            db = new TCEntities();

        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {


            rdbCI.IsChecked = true;
            txtIngresos.IsEnabled = false;
            txtEgresos.IsEnabled = false;
            txtMonto.IsEnabled = false;
            txtMotivo.IsEnabled = false;
            //solo mostrar datos del cliente
            txtNombre.IsEnabled = false;
            txtApellido.IsEnabled = false;
            txtrazonSocial.IsEnabled = false;
            txtDirecion.IsEnabled = false;
            txtLugartrabajo.IsEnabled = false;
            txtAntiguedad.IsEnabled = false;
        }

        private void TxtCICliente_LostFocus(object sender, RoutedEventArgs e)
        {

            List<Cliente> ListaClientes = new List<Cliente>();
            ListaClientes = db.Cliente.ToList();
            string documentoNro = txtCICliente.Text;
            int TipoDoc;
            if (rdbCI.IsChecked == true)
            {
                TipoDoc = 1;

            }else
            {
                TipoDoc = 2;
            }
            //var client;
            try
            {
                Cliente client = (Cliente)(from c in ListaClientes
                                           where (/*c.TipoDocumento == TipoDoc &&*/ c.Documento == documentoNro)
                                           select c).Single();
                
                txtNombre.Text = client.Nombre;
                txtApellido.Text = client.Apellido;
                txtrazonSocial.Text = client.RazonSocial;
                txtDirecion.Text = client.Direccion;
                txtLugartrabajo.Text = client.LugarTrabajo;
                txtAntiguedad.Text = client.AntiguedadLaboral.ToString();
                    
                
            }
            catch (Exception)
            {

                MessageBox.Show("Cliente No existe");
            }

            

        }
    }
}
