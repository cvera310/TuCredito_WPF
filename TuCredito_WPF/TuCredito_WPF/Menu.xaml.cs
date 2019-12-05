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
    /// Lógica de interacción para Menu.xaml
    /// </summary>
    public partial class Menu : Window
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Visible;
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
            ButtonOpenMenu.Visibility = Visibility.Visible;
        }

        private void ListViewMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //UserControl usc = null;
            GridMain.Children.Clear();

            switch (((ListViewItem)((ListView)sender).SelectedItem).Name)
            {
                case "ItemCliente":
                    w_Cliente v_cliente = new w_Cliente();
                    v_cliente.Owner = this;
                    v_cliente.ShowDialog();
                    break;
                case "ItemPersonal":

                    w_Personal v_personal = new w_Personal();
                    v_personal.Owner = this;
                    v_personal.ShowDialog();
                    break;
                case "ItemMoneda":
                    w_Moneda v_moneda = new w_Moneda();
                    v_moneda.Owner = this;
                    v_moneda.ShowDialog();

                   
                    break;

                case "ItemSolicitud":
                    w_AprobarSolicitud v_solicitud = new w_AprobarSolicitud();
                    v_solicitud.Owner = this;
                    v_solicitud.ShowDialog();
                    
                    break;

                case "ItemCargaSolicitud":
                    w_Carga_SolicitudCredito v_solicitudC = new w_Carga_SolicitudCredito();
                    v_solicitudC.Owner = this;
                    v_solicitudC.ShowDialog();

                    break;

                case "ItemCargaPrestamo":
                    w_Prestamo v_prestamo = new w_Prestamo();
                    v_prestamo.Owner = this;
                    v_prestamo.ShowDialog();

                    break;


                default:
                    break;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Desea que llamemos al 911?");
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Desastre ko Marito");
        }
    }
}
