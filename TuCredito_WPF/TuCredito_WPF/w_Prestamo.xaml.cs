using System;
using System.Collections.Generic;
using System.Globalization;
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
        CultureInfo elGR = CultureInfo.CreateSpecificCulture("el-GR");
        TuCreDitEntities db;
        bool grillado = false;
        public w_Prestamo()
        {
            InitializeComponent();
            db = new TuCreDitEntities();
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            CargarGrilla();

        }

        private void CargarGrilla()
        {

            try
            {
                List<Solicitud_Credito> solicitudes = new List<Solicitud_Credito>();
                solicitudes = db.Solicitud_Credito.ToList();
                dgSolicitudes.ItemsSource = (from s in solicitudes where s.aprobado == "S" select s).ToList();
                cmbTipo.ItemsSource = db.tipo_prestamo.ToList();
                cmbTipo.DisplayMemberPath = "tpre_descripcion";

            }
            catch (Exception)
            {

                MessageBox.Show("Problema de RED al cargar los datos, la red no anda, todo es culpa de la red... dude, trust me");
            }




        }



        void CargarGrilla2()
        {
            dgPrestamos.ItemsSource = null;
            dgPrestamos.ItemsSource = PrestamoDetalle.ObtenerPrestamoDetalle(); /*db.prestamo_detalle.ToList();*/

        }




        private void BtnAgregar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (grillado == true)
                {
                    prestamo p = new prestamo();
                    Solicitud_Credito sc1 = (Solicitud_Credito)dgSolicitudes.SelectedItem;
                    p.Cliente = sc1.Cliente;
                    p.moneda = sc1.moneda;
                    p.pre_fecha = (DateTime)dtpFecha.SelectedDate;
                    p.pre_montosolicitado = Convert.ToInt32(txtMonSolicitado.Text);
                    p.pre_montototal = /*Convert.ToInt32(txtMonTotal.Text);*/ 108;
                    p.tipo_prestamo = (tipo_prestamo)cmbTipo.SelectedItem;
                    p.pre_cantcuota = Convert.ToInt32(txtCuotas.Text);
                    p.pre_interes = Convert.ToInt32(txtInteres.Text);
                    db.prestamo.Add(p);
                    db.SaveChanges();








                    MessageBox.Show("Registro Agregado Correctamente!");

                }
                else
                {
                    MessageBox.Show("Debe generar las cuotas");

                }




                
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }

        }



        //private void DgPrestamoDetalle_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    if (dgPrestamos.SelectedItem != null)
        //    {
        //        prestamo p = (prestamo)dgPrestamos.SelectedItem;
        //        txtNroPrestamo.Text = p.pre_numero.ToString();
        //        txtCliente.Text = p.pre_cliente.ToString();
        //        cboTipoPrestamo.SelectedItem = p.pre_tipoprestamo;
        //        txtMonSolicitado.Text = p.pre_montosolicitado.ToString();
        //        txtMonTotal.Text = p.pre_montototal.ToString();
        //        txtCuotas.Text = p.pre_cantcuota.ToString();
        //        dtpFecha.SelectedDate = p.pre_fecha;
        //        cboMoneda.SelectedItem = p.pre_moneda;
        //        txtInteres.Text = p.pre_interes.ToString();

        //    }
        //}

        private void txtCliente_LostFocus(object sender, RoutedEventArgs e)
        {
            /*string NroDoc = txtCliente.Text;
            Cliente Cli = ObtenerCliente(NroDoc);
            if (Cli != null)
            {

                MessageBox.Show("Cliente existe");
            }*/
        }


       /*/ private Cliente ObtenerCliente(string Documento)
        {
           /* Cliente cli = null;
            List<Cliente> ListaClientes = new List<Cliente>();
            ListaClientes = db.Cliente.ToList();
            string documentoNro = txtCliente.Text;
            try
            {
                Cliente client = (Cliente)(from c in ListaClientes
                                           where (/*c.TipoDocumento == TipoDoc && c.Documento == documentoNro)
                                           select c).Single();

                cli = client;
            }
            catch (Exception)
            {

                MessageBox.Show("Cliente No existe");
            }

            return cli;

        }*/



        /*private Solicitud_Credito ObtenerClienteMonto(int Monto)
        {
            Solicitud_Credito sc = null;
            List<Solicitud_Credito> ListaSolicitudes = new List<Solicitud_Credito>();
            ListaSolicitudes = db.Solicitud_Credito.ToList();
            int MontoSolicitado = Convert.ToInt32(txtMonSolicitado.Text);

            Solicitud_Credito solicitud = (Solicitud_Credito)(from s in ListaSolicitudes
                                                              where (/*c.TipoDocumento == TipoDoc && s.MontoSolicitado == MontoSolicitado)
                                                              select s).Single();
            sc = solicitud;

            return sc;

        }*/


        private void btnGenerarCuotas_Click(object sender, RoutedEventArgs e)
        {

            try
            {

                double Total = 0;
                int MontoSolicitado = Convert.ToInt32(txtMonSolicitado.Text.Replace(".", ""));
                double Interes = Convert.ToDouble(txtInteres.Text);
                double InteresGenerado = 0;
                int CantCuota = Convert.ToInt32(txtCuotas.Text);
                Double MontoCuota;
                InteresGenerado = MontoSolicitado * (Interes / 100);
                Total = MontoSolicitado + (MontoSolicitado * (Interes / 100));
                MontoCuota = Math.Round((Total / CantCuota), 0);
                txtInteresGenerado.Text = String.Format(elGR, "{0:0,0}", InteresGenerado);
                Total = MontoCuota * CantCuota;
                txtMonTotal.Text = String.Format(elGR, "{0:0,0}", Total);//FORMATEA EL MONTO TOTAL CON SEPARADOR DE MILES
                                                                         //txtSaldo.Text = txtMontoTotal.Text;

                for (int i = 0; i < CantCuota; i++)
                {
                    PrestamoDetalle prestamoDetalle = new PrestamoDetalle();
                    prestamoDetalle.NroCuota = i;
                    prestamoDetalle.MontoDetalle = MontoCuota;
                    prestamoDetalle.SaldoDetalle = MontoCuota;
                    prestamoDetalle.estado = EstadoPrestamo.No_pagado;
                    //prestamoDetalle.Vencimiento = dtpFecha.Value.Date.AddMonths(i);

                    // prestamo.ListaPrestamoDetalle.Add(prestamoDetalle);
                    PrestamoDetalle.Agregar(prestamoDetalle);

                }

                CargarGrilla2();
                grillado = true;


            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }


        }


        void LimpiarPantalla()
        {
            
        }

        private void DgPrestamoDetalle_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (dgPrestamos.SelectedItem != null)
            {
                /*prestamo P = (prestamo)dgPrestamos.SelectedItem;
                txtnombre.Text = P.Cliente.Nombre;
                txtApellido.Text = P.Cliente.Apellido;*/
                //codigo de cvera
                
                



            }



        }


        private void AgregarPrestamo(prestamo p)
        {

        }

        private void DgSolicitudes_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

            if (dgSolicitudes.SelectedItem != null)
            {
                /*prestamo P = (prestamo)dgPrestamos.SelectedItem;
                txtnombre.Text = P.Cliente.Nombre;
                txtApellido.Text = P.Cliente.Apellido;*/
                //codigo de cvera
                Solicitud_Credito sc1 = (Solicitud_Credito)dgSolicitudes.SelectedItem;
                txtnombre.Text = sc1.Cliente.Nombre;
                txtApellido.Text = sc1.Cliente.Apellido;
                txtMonSolicitado.Text = sc1.MontoSolicitado.ToString();
                txtMoneda.Text = sc1.moneda.mon_descripcion;





            }


        }

        private void CmbTipo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            tipo_prestamo TP = (tipo_prestamo)cmbTipo.SelectedItem;
            txtInteres.Text = TP.tpre_interes.ToString();



        }
    }
}

