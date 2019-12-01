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
    /// Lógica de interacción para w_Login.xaml
    /// </summary>
    public partial class w_Login : Window
    {
        HttpClient client = new HttpClient();

        public w_Login()
        {
            InitializeComponent();

            client.BaseAddress = new Uri("http://localhost:56798/");
            //client.DefaultRequestHeaders.Accept.Add(
            //    new MediaTypeWithQualityHeaderValue("api/Cliente")); // It  tells the server to send data in JSON format.
        }

        private void Btnprueba_Click(object sender, RoutedEventArgs e)
        {
            HttpResponseMessage respuesta = client.GetAsync("api/Cliente").Result;

            if (respuesta.IsSuccessStatusCode)
            {
                MessageBox.Show("se consulto correctamente a la API");
            } else
            {
                MessageBox.Show("Error Code" + respuesta.StatusCode + " : Message - " + respuesta.ReasonPhrase);
            }
        }


       
    }
}
