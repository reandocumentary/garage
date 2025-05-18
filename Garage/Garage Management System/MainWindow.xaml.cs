using Garage_Management_System.Class;
using Garage_Management_System.FrmSystem;
using Garage_Management_System.Garage;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Garage_Management_System
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                this.Title = variables.vTittle;
            }
            catch { }
        }
        private void RFrmSystemUpdate_Click(object sender, RoutedEventArgs e)
        {

            frame.NavigationService.Navigate(new FrmSystemUpdate());
        }
        private void _About_Click(object sender, RoutedEventArgs e)
        {
            frame.NavigationService.Navigate(new AboutMe());
        }

        private void Register_product_Click(object sender, RoutedEventArgs e)
        {
            frame.NavigationService.Navigate(new Garage.FrmProducts());
        }

        private void Register_customer_Click(object sender, RoutedEventArgs e)
        {
            frame.NavigationService.Navigate(new Garage.FrmCustomer());
        }

        private void Register_PlateNumber_Click(object sender, RoutedEventArgs e)
        {
            frame.NavigationService.Navigate(new Garage.FrmPlateNumber());
        }

        private void _exit_app_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        private void _logout_app_Click(object sender, RoutedEventArgs e)
        {
            FrmLogin login = new FrmLogin();
            this.Hide();
            login.ShowDialog();
        }

    }
}
