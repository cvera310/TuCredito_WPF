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
        public w_Carga_SolicitudCredito()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {



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
            MessageBox.Show("Salio del foco");
        }
    }
}
