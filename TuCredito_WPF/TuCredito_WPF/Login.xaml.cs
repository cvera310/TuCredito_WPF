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
using System.Net.Http;
using System.Net.Http.Headers;

namespace TuCredito_WPF
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
       

        public Login()
        {
            InitializeComponent();
           
        }

        private async void Button_Click(object sender, RoutedEventArgs e)
        {
            if (txtEmail.Text.Trim() != "" && txtPassword.Password.ToString() != null)
            {
                Usuarios usuario = new Usuarios();
                usuario.email = txtEmail.Text.Trim();
                usuario.password = txtPassword.Password.ToString().Trim();
                try
                {
                    if (await Usuarios.IniciarSesion(usuario))
                    {
                        Menu menu = new Menu();
                        Hide();
                        menu.ShowDialog();
                        Close();
                    } else
                    {
                        MessageBox.Show("Favor verificar usuario y contraseña");
                    }
                }
                catch (HttpRequestException ex)
                {

                    MessageBox.Show("Error al conectar con servidor!\n" + ex.Message, "Iniciar Sesion", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error!\n" + ex.Message, "Iniciar Sesion", MessageBoxButton.OK, MessageBoxImage.Error);
                }


            }
            

           

        }


        private void pruebaApi()
        {
            //try
            //{
            //    HttpResponseMessage respuesta = client.PostAsJsonAsync("Account/LoginWpf", );

            //    if (respuesta.IsSuccessStatusCode)
            //    {
            //        MessageBox.Show("se consulto correctamente a la API");
            //    }
            //    else
            //    {
            //        MessageBox.Show("Error Code" + respuesta.StatusCode + " : Message - " + respuesta.ReasonPhrase);
            //    }
            //}
            //catch (Exception)
            //{

            //    throw;
            //}


        }





    }
}
