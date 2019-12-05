using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
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
        TuCreDitEntities db;
        string InformConfEstado = "T";
        HttpClient client = new HttpClient();

        public w_Carga_SolicitudCredito()
        {
            InitializeComponent();
            db = new TuCreDitEntities();
            client.BaseAddress = new Uri("https://tucreditoazure.azurewebsites.net/");

        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {


            rdbCI.IsChecked = true;
            BloquearForm();
            //txtIngresos.IsEnabled = false;
            //txtEgresos.IsEnabled = false;
            //txtMonto.IsEnabled = false;
            //txtMotivo.IsEnabled = false;
            //solo mostrar datos del cliente
            txtNombre.IsEnabled = false;
            txtApellido.IsEnabled = false;
            txtrazonSocial.IsEnabled = false;
            txtDirecion.IsEnabled = false;
            txtLugartrabajo.IsEnabled = false;
            txtAntiguedad.IsEnabled = false;
           // lblAntiguedad.Foreground = new SolidColorBrush(Colors.Red);
        }

        void TxtCICliente_LostFocus(object sender, RoutedEventArgs e)
        {
            string NroDoc = txtCICliente.Text;
            Cliente Cli = OtenerCliente(NroDoc);
            if (Cli != null)
            {
                txtNombre.Text = Cli.Nombre;
                txtApellido.Text = Cli.Apellido;
                txtrazonSocial.Text = Cli.RazonSocial;
                txtDirecion.Text = Cli.Direccion;
                txtLugartrabajo.Text = Cli.LugarTrabajo;
                txtAntiguedad.Text = Cli.AntiguedadLaboral.ToString();
            }
        }

        private Cliente OtenerCliente(string Documento)
        {
            
            Cliente cli = null;
            List<Cliente> ListaClientes = new List<Cliente>();
            try
            {
                ListaClientes = db.Cliente.ToList();
            }
            catch (Exception)
            {

                MessageBox.Show("Problema de RED al cargar los datos, la red no anda, todo es culpa de la red...dude, trust me");
            }

            string documentoNro = txtCICliente.Text;
            int TipoDoc;
            if (rdbCI.IsChecked == true)
            {
                TipoDoc = 1;

            }
            else
            {
                TipoDoc = 2;
            }


            try
            {
                Cliente client = (Cliente)(from c in ListaClientes
                                           where (/*c.TipoDocumento == TipoDoc &&*/ c.Documento == documentoNro)
                                           select c).Single();

                cli = client;
            }
            catch (Exception)
            {

                MessageBox.Show("Cliente No existe");
                LimpiarTodo();
                BloquearForm();
            }


            return cli;

        }

        private void LimpiarTodo()
        {

            txtCICliente.Text = "";
            txtIngresos.Text = "";
            txtEgresos.Text = "";
            txtMonto.Text = "";
            txtMotivo.Text = "";
            rdbCI.IsChecked = true;



            txtNombre.Text = "";
            txtApellido.Text = "";
            txtrazonSocial.Text = "";
            txtDirecion.Text = "";
            txtLugartrabajo.Text = "";
            txtAntiguedad.Text = "";
            lblCliente.Foreground = new SolidColorBrush(Colors.Black);
            lblnombre.Foreground = new SolidColorBrush(Colors.Black);
            lblApellido.Foreground = new SolidColorBrush(Colors.Black);
            lblRazonsocial.Foreground = new SolidColorBrush(Colors.Black);
            lblDireccion.Foreground = new SolidColorBrush(Colors.Black);
            lblLugarTrabajo.Foreground = new SolidColorBrush(Colors.Black);
            lblAntiguedad.Foreground = new SolidColorBrush(Colors.Black);
            txtNombre.Foreground = new SolidColorBrush(Colors.Black);
            txtApellido.Foreground = new SolidColorBrush(Colors.Black);
            txtrazonSocial.Foreground = new SolidColorBrush(Colors.Black);
            txtDirecion.Foreground = new SolidColorBrush(Colors.Black);
            txtLugartrabajo.Foreground = new SolidColorBrush(Colors.Black);
            txtAntiguedad.Foreground = new SolidColorBrush(Colors.Black);



        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            string NroDoc = txtCICliente.Text;
            Cliente Cli = OtenerCliente(NroDoc);
            if (Cli != null && InformConfEstado != "T")
            {

                if (MessageBox.Show("¿Confirmar Solicitud?", "Confirmación de Solicitud", MessageBoxButton.YesNo, MessageBoxImage.Exclamation) == MessageBoxResult.Yes)
                {


                    try
                    {
                        Solicitud_Credito sc = new Solicitud_Credito();
                        sc.Cliente = Cli;
                        sc.MontoSolicitado = Convert.ToInt32(txtMonto.Text);
                        sc.TotalIngreso = Convert.ToInt32(txtIngresos.Text);
                        sc.TotalEgreso = Convert.ToInt32(txtEgresos.Text);
                        sc.MotivoPrestamo = txtMotivo.Text;
                        sc.aprobado = "N";
                        sc.Informconf = InformConfEstado;
                        db.Solicitud_Credito.Add(sc);
                        db.SaveChanges();
                        MessageBox.Show("Solicitud cargada correctamente");
                        LimpiarTodo();

                    }
                    catch (Exception)
                    {

                        MessageBox.Show("Verifique los datos ingresados");
                        LimpiarTodo();
                    }

                }
                else
                {
                    MessageBox.Show("Verifique los datos ingresados");
                    

                }
            }
        }

        private void Infromconf( int CI)
        {
           
           // Boolean informconf = false;
           
            try
            {


                HttpResponseMessage respuesta = client.GetAsync("api/Informconfs/" + CI).Result;
                if (respuesta.IsSuccessStatusCode)
                {
                    InformConfEstado = "S";
                }
                else
                {
                    //Acá se pone N para cualquier otro estado, igual no va a poder cargar la silicitud si es que falla el httpclient
                    InformConfEstado = "N";
                   // MessageBox.Show("Error Code" + respuesta.StatusCode + " : Message - " + respuesta.ReasonPhrase);
                }



            }
            catch (Exception)
            {

                MessageBox.Show("Error de conexión, PROBLEMA DE RED por que mi código funcionaba en mi máquina");
            }

        }
        private void BloquearForm()
        {

            txtIngresos.IsEnabled = false;
            txtEgresos.IsEnabled = false;
            txtMonto.IsEnabled = false;
            txtMotivo.IsEnabled = false;

        }

        private void DesbloquearForm()
        {
            txtIngresos.IsEnabled = true;
            txtEgresos.IsEnabled = true;
            txtMonto.IsEnabled = true;
            txtMotivo.IsEnabled = true;

        }

        //botón de comprobar informconf
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

            try
            {


                Infromconf(Convert.ToInt32(txtCICliente.Text));

                if (InformConfEstado == "S")
                {
                    if (MessageBox.Show("¡¡Cliente con Infromconf!! ¿Desea continuar?", "Informconf", MessageBoxButton.YesNo, MessageBoxImage.Exclamation) == MessageBoxResult.Yes)
                    {
                        lblCliente.Foreground= new SolidColorBrush(Colors.Red);
                        lblnombre.Foreground = new SolidColorBrush(Colors.Red);
                        lblApellido.Foreground = new SolidColorBrush(Colors.Red);
                        lblRazonsocial.Foreground = new SolidColorBrush(Colors.Red);
                        lblDireccion.Foreground = new SolidColorBrush(Colors.Red);
                        lblLugarTrabajo.Foreground = new SolidColorBrush(Colors.Red);
                        lblAntiguedad.Foreground = new SolidColorBrush(Colors.Red);
                        txtNombre.Foreground = new SolidColorBrush(Colors.Red);
                        txtApellido.Foreground = new SolidColorBrush(Colors.Red);
                        txtrazonSocial.Foreground= new SolidColorBrush(Colors.Red);
                        txtDirecion.Foreground = new SolidColorBrush(Colors.Red);
                        txtLugartrabajo.Foreground= new SolidColorBrush(Colors.Red);
                        txtAntiguedad.Foreground= new SolidColorBrush(Colors.Red);

                        DesbloquearForm();

                    }
                    else
                    {
                        //si se le da a cancelar
                        LimpiarTodo();

                    }
                }
                else
                {
                    MessageBox.Show("Cliente limpio");
                    DesbloquearForm();
                }

            }
            catch (Exception)
            {

                MessageBox.Show("Verifique los datos ingresados");
                LimpiarTodo();
            }


        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            LimpiarTodo();
            BloquearForm();
        }
    }
}
