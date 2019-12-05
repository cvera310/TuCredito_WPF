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
    /// Lógica de interacción para w_AprobarSolicitud.xaml
    /// </summary>
    public partial class w_AprobarSolicitud : Window
    {
        TCEntities db;
        public w_AprobarSolicitud()
        {
            InitializeComponent();
            db = new TCEntities();
        }

        private void CargarGrilla()
        {

            try
            {
                List<Solicitud_Credito> solicitudes = new List<Solicitud_Credito>();
                solicitudes = db.Solicitud_Credito.ToList();
                dgSolicitudes.ItemsSource = (from s in solicitudes where s.aprobado == "N" select s).ToList();

            }
            catch (Exception)
            {

                MessageBox.Show("Problema de RED al cargar los datos, la red no anda, todo es culpa de la red... dude, trust me");
            }


            

        }

        private void BtnAprobar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (dgSolicitudes.SelectedItem != null)
                {
                    if (MessageBox.Show("¿Aprobar Solicitud?", "Confirmar Aprobacion", MessageBoxButton.YesNo, MessageBoxImage.Exclamation) == MessageBoxResult.Yes)
                    {
                        Solicitud_Credito sc = (Solicitud_Credito)dgSolicitudes.SelectedItem;
                        sc.aprobado = "S";
                        db.Entry(sc).State = System.Data.Entity.EntityState.Modified;
                        db.SaveChanges();
                        MessageBox.Show("Solicitud Aprobada");
                        CargarGrilla();
                    }
                }
                else
                {
                    MessageBox.Show("Seleccione una solicitud de la lista");
                }

            }
            catch (Exception)
            {

                MessageBox.Show("Acá iba a explotar todo, pero hay un cath... ¡No contaban con mi astucia!");
            }

        }

        private void BtnRechazar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (dgSolicitudes.SelectedItem != null)
                {
                    if (MessageBox.Show("¿Rechazar Solicitud?", "Confirmar Rechazo", MessageBoxButton.YesNo, MessageBoxImage.Exclamation) == MessageBoxResult.Yes)
                    {
                        Solicitud_Credito sc = (Solicitud_Credito)dgSolicitudes.SelectedItem;
                        sc.aprobado = "R";
                        db.Entry(sc).State = System.Data.Entity.EntityState.Modified;
                        db.SaveChanges();
                        MessageBox.Show("Solicitud Rechazada");
                        CargarGrilla();
                    }
                }
                else
                {
                    MessageBox.Show("Seleccione una solicitud de la lista");
                }

            }
            catch (Exception)
            {

                MessageBox.Show("Acá iba a explotar todo, pero hay un cath... ¡No contaban con mi astucia!");
            }

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            CargarGrilla();


        }
    }

    
}
