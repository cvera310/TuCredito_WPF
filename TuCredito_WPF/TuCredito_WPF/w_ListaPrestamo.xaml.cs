﻿using System;
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
    /// Lógica de interacción para w_ListaPrestamo.xaml
    /// </summary>
    public partial class w_ListaPrestamo : Window
    {
        PrestamoEntities db;
        public w_ListaPrestamo()
        {
            InitializeComponent();
            db = new PrestamoEntities();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            CargarGrilla();
        }

        void CargarGrilla()
        {
            dgPrestamos.ItemsSource = db.prestamo.ToList();
            


        }

    }
}