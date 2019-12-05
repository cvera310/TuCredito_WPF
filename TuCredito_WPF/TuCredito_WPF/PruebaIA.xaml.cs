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
using Microsoft.Azure.CognitiveServices.Vision.ComputerVision.Models;
using Microsoft.Win32;

namespace TuCredito_WPF
{
    /// <summary>
    /// Lógica de interacción para PruebaIA.xaml
    /// </summary>
    public partial class PruebaIA : Window
    {
        public string ImagePath { get; set; }

        public PruebaIA()
        {
            InitializeComponent();
        }

        private async void  Btn1_Click(object sender, RoutedEventArgs e)
        {
            //string imagePath = @"xxxxxxx.jpg";
            //OutputTextBlock.Text = "Thinking…";
            //var language = OcrLanguages.En;
            //OcrResult ocrResult = await OCRServices.UploadAndRecognizeImageAsync(imagePath, language);
            //string resultText = await OCRServices.FormatOcrResult(ocrResult);
            //OutputTextBlock.Text = resultText;

        }

        private void Btnimg_Click(object sender, RoutedEventArgs e)
        {

        }

        private async void GetText_Click(object sender, RoutedEventArgs e)
        {
            OutputTextBlock.Text = "Thinking...";
            var language = OcrLanguages.En;
            OcrResult ocrResult = await OCRServices.UploadAndRecognizeImageAsync(ImagePath, language);
            string resultText = await OCRServices.FormatOcrResult(ocrResult);
            OutputTextBlock.Text = resultText; // ocrResult.Regions[0].Lines[0].Words[0].Text;
        }

        private void GetImageButton_Click(object sender, RoutedEventArgs e)
        {
            var openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image files (*.bmp, *.jpg, *.gif, *.png)|*.bmp;*.jpg;*.gif;*.png|All files (*.*)|*.*";
            if (openFileDialog.ShowDialog() == true)
            {
                ImagePath = openFileDialog.FileName;
                var uriSource = new Uri(ImagePath);
                OCRImage.Source = new BitmapImage(uriSource);
            }
        }
    }
}
