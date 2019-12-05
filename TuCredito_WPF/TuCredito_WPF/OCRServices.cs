using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Azure.CognitiveServices.Vision.ComputerVision;
using Microsoft.Azure.CognitiveServices.Vision.ComputerVision.Models;
using System.IO;

namespace TuCredito_WPF
{
   public class OCRServices
    {


        internal static async Task<OcrResult> UploadAndRecognizeImageAsync(string imageFilePath, OcrLanguages language)
        {
            string key = "0d8a60b23e9b4441b748d01c93c8a88f";
            string endPoint = "https://pruebaiavision.cognitiveservices.azure.com/";
            var credentials = new ApiKeyServiceClientCredentials(key);

            using (var client = new ComputerVisionClient(credentials) { Endpoint = endPoint })
            {
                using (Stream imageFileStream = File.OpenRead(imageFilePath))
                {
                    OcrResult ocrResult = await client.RecognizePrintedTextInStreamAsync(false, imageFileStream, language);
                    return ocrResult;
                }
            }
        }

        internal static async Task<string> FormatOcrResult(OcrResult ocrResult)
        {
            var sb = new StringBuilder();
            foreach (OcrRegion region in ocrResult.Regions)
            {
                foreach (OcrLine line in region.Lines)
                {
                    foreach (OcrWord word in line.Words)
                    {
                        sb.Append(word.Text);
                        sb.Append(" ");
                    }
                    sb.Append("\r\n");
                }
                sb.Append("\r\n\r\n");
            }
            return sb.ToString();
        }





    }
}
