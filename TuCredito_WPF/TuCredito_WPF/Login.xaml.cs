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
        HttpClient client = new HttpClient();

        public Login()
        {
            InitializeComponent();
            client.BaseAddress = new Uri("http://localhost:56798/");
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
