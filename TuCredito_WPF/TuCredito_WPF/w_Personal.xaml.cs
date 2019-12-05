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
   
    public partial class w_Personal : Window

    {
        TuCreDitEntities db;
       // PrestamoEntities db;
        public w_Personal()
        {
            InitializeComponent();
            db = new TuCreDitEntities();
            //db = new PrestamoEntities();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            CargarGrilla();
            cboCargo.ItemsSource = db.Cargo.ToList();
            cboCargo.DisplayMemberPath = "Descripcion";
            cboCargo.SelectedValuePath = "Id";

            cboTipoDoc.ItemsSource = db.TipoDeDocumento.ToList();
            cboTipoDoc.DisplayMemberPath = "Descripcion";
            cboTipoDoc.SelectedValuePath = "Id";
        }

        void LimpiarPantalla()
        {
            txtCod.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtNroDoc.Text = "";
            txtTelefono.Text = "";
            txtDireccion.Text = "";
            cboCargo.Text = "";
            cboTipoDoc.Text= "";
            rdbMas.IsChecked = false;
            rdbFem.IsChecked = false;
            dtpNacimiento.Text = "";

        }

        void CargarGrilla()
        {
            dgPersonales.ItemsSource = db.personal.ToList();
           dgPersonales.Columns[10].Visibility = Visibility.Hidden;
            dgPersonales.Columns[11].Visibility = Visibility.Hidden;
            dgPersonales.Columns[12].Visibility = Visibility.Hidden;

        }

        private void DgPersonales_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (dgPersonales.SelectedItem != null)
            {
                personal p = (personal)dgPersonales.SelectedItem;
                txtCod.Text = p.Nombre;
                txtNombre.Text = p.Nombre;
                txtApellido.Text = p.Apellido;
                txtNroDoc.Text = p.Documento;
                cboCargo.SelectedItem = p.Cargo1;
                dtpNacimiento.SelectedDate = p.FechaNac;
                txtTelefono.Text = p.Telefono;
                txtDireccion.Text = p.Direccion;
                cboTipoDoc.SelectedItem = p.TipoDeDocumento1;

                if (p.Sexo == 1)
                {
                    rdbMas.IsChecked = true;
                }
                else
                {
                   rdbFem.IsChecked = true;
                }

            }
        }

        private void BtnAgregar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                personal p = new personal();
                p.Nombre = txtNombre.Text;
                p.Apellido = txtApellido.Text;
                p.Documento = txtNroDoc.Text;
                p.Cargo1 = (Cargo)cboCargo.SelectedItem;
                p.FechaNac = dtpNacimiento.SelectedDate.Value;
                p.Telefono = txtTelefono.Text;
                p.Direccion = txtDireccion.Text;
                p.TipoDeDocumento1 = (TipoDeDocumento)cboTipoDoc.SelectedItem;

                if (rdbMas.IsChecked == true)
                    p.Sexo = 1;
                else
                    p.Sexo = 2;
                db.personal.Add(p);
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
            if (dgPersonales.SelectedItem != null)
            {
                personal p = (personal)dgPersonales.SelectedItem;
                p.Nombre = txtNombre.Text;
                p.Apellido = txtApellido.Text;
                p.Documento = txtNroDoc.Text;
                p.Cargo1 = (Cargo)cboCargo.SelectedItem;
                p.FechaNac = dtpNacimiento.SelectedDate.Value;
                p.Telefono = txtTelefono.Text;
                p.Direccion = txtDireccion.Text;
                p.TipoDeDocumento1 = (TipoDeDocumento)cboTipoDoc.SelectedItem;
                if (rdbMas.IsChecked == true)
                    p.Sexo = 1;
                else
                    p.Sexo = 2;
                db.Entry(p).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                CargarGrilla();
                LimpiarPantalla();

            }
        }

        private void BtnEliminar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (dgPersonales.SelectedItem != null)
                {
                    personal p = (personal)dgPersonales.SelectedItem;
                    db.personal.Remove(p);
                    db.SaveChanges();
                    CargarGrilla();
                    LimpiarPantalla();

                    MessageBox.Show("Registro Eliminado Correctamente");
                }
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }    
        }
    }
}
