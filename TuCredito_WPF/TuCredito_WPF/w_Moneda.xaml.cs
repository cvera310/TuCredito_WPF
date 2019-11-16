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
    /// Lógica de interacción para w_Moneda.xaml
    /// </summary>
    public partial class w_Moneda : Window
    {
        TPEntities db;

        public w_Moneda()
        {
            InitializeComponent();
            db = new TPEntities();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            CargarGrilla();



        }

        void CargarGrilla()
        {
            dgMoneda.ItemsSource = db.moneda.ToList();



        }

        private void DataGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        private void BtnAgregar_Click(object sender, RoutedEventArgs e)
        {
            try
            {

                moneda m = new moneda();
                m.mon_codigo = txtCodigo.Text;
                m.mon_descripcion = txtDescripcion.Text;
                m.mon_pais = txtPais.Text;

                db.moneda.Add(m);
                db.SaveChanges();
                CargarGrilla();
                LimpiarPantalla();
            }
            catch (Exception err ) 
            {

                MessageBox.Show(err.Message);
            }

            /*
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             * 
             */



        }

        void LimpiarPantalla()
        {
            txtCodigo.Text = "";
            txtDescripcion.Text = "";
            txtPais.Text = "";

        }
    }
}
