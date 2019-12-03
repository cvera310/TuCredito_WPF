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
    /// Lógica de interacción para w_Prestamo.xaml
    /// </summary>
    public partial class w_Prestamo : Window
    {
        TCEntities db;
        public w_Prestamo()
        {
            InitializeComponent();
            db = new TCEntities();
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            CargarGrilla();
            cboMoneda.ItemsSource = db.Cargo.ToList();
            cboMoneda.DisplayMemberPath = "Descripcion";
            cboMoneda.SelectedValuePath = "Id";

             cboTipoPrestamo.ItemsSource = db.TipoDeDocumento.ToList();
             cboTipoPrestamo.DisplayMemberPath = "Descripcion";
              cboTipoPrestamo.SelectedValuePath = "Id";
        }


        void CargarGrilla()
        {
            dgPrestamos.ItemsSource = db.personal.ToList();
            dgPrestamos.Columns[10].Visibility = Visibility.Hidden;
            dgPrestamos.Columns[11].Visibility = Visibility.Hidden;
            dgPrestamos.Columns[12].Visibility = Visibility.Hidden;

        }

        private void DgPrestamos_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (dgPrestamos.SelectedItem != null)
            {
                prestamo p = (prestamo)dgPrestamos.SelectedItem;
                txtNroPrestamo.Text = p.pre_numero.ToString();
                txtCliente.Text = p.pre_cliente.ToString();
                cboTipoPrestamo.SelectedItem = p.pre_tipoprestamo;
                txtMonSolicitado.Text = p.pre_montosolicitado.ToString();
                txtMonTotal.Text = p.pre_montototal.ToString();
                txtCuotas.Text = p.pre_cantcuota.ToString();
                dtpFecha.SelectedDate = p.pre_fecha;
                cboMoneda.SelectedItem = p.pre_moneda;
                txtInteres.Text = p.pre_interes.ToString();
                
              

            }
        }

        private void BtnAgregar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
               prestamo p = new prestamo();
                p.pre_numero =Int32.Parse(txtNroPrestamo.Text);
                p.pre_cliente = Int32.Parse(txtCliente.Text);
                p.pre_tipoprestamo = (tipo_prestamo)cboTipoPrestamo.SelectedItem;


                MessageBox.Show("Registro Agregado Correctamente");
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }

        }




    }
    }

