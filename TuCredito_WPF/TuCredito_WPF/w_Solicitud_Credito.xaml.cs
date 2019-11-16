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
    /// Lógica de interacción para w_Solicitud_Credito.xaml
    /// </summary>
    public partial class w_Solicitud_Credito : Window
    {
        TCEntities db;
        public w_Solicitud_Credito()
        {
            InitializeComponent();
            db = new TCEntities();
        }

        private void dgSolicitudCredito_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (dgSolicitudCredito.SelectedItem != null)
            {
                Solicitud_Credito sc = (Solicitud_Credito)dgSolicitudCredito.SelectedItem;

                if (sc.aprobado == "s")
                    chkAprobado.IsChecked = true;
                else
                    chkAprobado.IsChecked = false;

                if (sc.Informconf == "s")
                    chkInformconf.IsChecked = true;
                else
                    chkInformconf.IsChecked = false;
            }
            CargarGrilla();

        }
        
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            CargarGrilla();
            dgSolicitudCredito.Columns[6].Visibility = Visibility.Hidden;

        }

        void CargarGrilla()
        {
            dgSolicitudCredito.ItemsSource = db.Solicitud_Credito.ToList();
        }

        private void btnActualizar_Click(object sender, RoutedEventArgs e)
        {
            if (dgSolicitudCredito.SelectedItem != null)
            {
                Solicitud_Credito sc= (Solicitud_Credito)dgSolicitudCredito.SelectedItem;

                if (chkAprobado.IsChecked == true)
                    sc.aprobado = "s";
                else
                    sc.aprobado = "n";

                if (chkInformconf.IsChecked == true)
                    sc.Informconf = "s";
                else
                    sc.Informconf = "n";

                db.Entry(sc).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    CargarGrilla();
                }
            else
                MessageBox.Show("Por Favor Eliga una solicitud para Actualizar!");
        }
    }
}
