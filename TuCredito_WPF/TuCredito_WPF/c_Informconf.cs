using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Headers;

namespace TuCredito_WPF
{
     public class c_Informconf
    {
        public int Documento { get; set; }




        public static async Task<bool> VerificarInformconf(Informconf i)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:44375/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage respuesta = await client.GetAsync("api/Informconfs" + i);
                if (respuesta.IsSuccessStatusCode)
                    return true;
                else
                    return false;
            }

        }

    }
}
