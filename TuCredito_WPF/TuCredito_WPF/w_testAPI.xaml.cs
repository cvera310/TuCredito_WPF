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

        static string subscriptionKey = Environment.GetEnvironmentVariable("0d8a60b23e9b4441b748d01c93c8a88f");
        static string endpoint = Environment.GetEnvironmentVariable("https://pruebaiavision.cognitiveservices.azure.com/");


        public w_Login()
        {
            InitializeComponent();

            client.BaseAddress = new Uri("https://tucreditoazure.azurewebsites.net/");
            //client.DefaultRequestHeaders.Accept.Add(
            //    new MediaTypeWithQualityHeaderValue("api/Cliente")); // It  tells the server to send data in JSON format.
        }

        private async void Btnprueba_Click(object sender, RoutedEventArgs e)
        {
            //if (txtci.Text != null)
            //{
            //    //c_Informconf informconf = new c_Informconf();
            //    //informconf.Documento = Convert.ToInt32(txtci.Text);

            int informconf = Convert.ToInt32(txtci.Text);
            //    try
            //    {
            //        if (await c_Informconf.VerificarInformconf(informconf))
            //        {

            //        }
            //    }
            //    catch (Exception)
            //    {

            //        throw;
            //    }
            //}


            HttpResponseMessage respuesta = client.GetAsync("api/Informconfs/" + informconf).Result;

            if (respuesta.IsSuccessStatusCode)
            {
                MessageBox.Show("Usuario en informconf");
            }
            else
            {
                MessageBox.Show("Error Code" + respuesta.StatusCode + " : Message - " + respuesta.ReasonPhrase);
            }
        }


       
    }
}
