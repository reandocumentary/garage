using Garage_Management_System.Class;
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
using System.Net.NetworkInformation;

namespace Garage_Management_System.FrmSystem
{
    /// <summary>
    /// Interaction logic for FrmSystemUpdate.xaml
    /// </summary>
    public partial class FrmSystemUpdate : Page
    {
        public FrmSystemUpdate()
        {
            InitializeComponent();
        }
        
        public static string PingAddress (string address , int timeout)
        {
            try
            {
                Ping ip = new Ping();
                PingReply reply = ip.Send(address, timeout);
                return reply.RoundtripTime.ToString();
            }
            catch {
                return "NO";
            }
        }

        void FrmSystemUpdate_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
               string status= PingAddress("www.google.com", 1000);

                if (status != "NO" )
                {
                   lblinternet.Text = "System Can connection to Internet";
                }
                else
                {
                    lblinternet.Text = "Internet not working";
                }

            }
            catch { }
        }

    }
}
