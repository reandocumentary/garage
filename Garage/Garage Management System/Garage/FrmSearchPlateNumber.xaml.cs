using Garage_Management_System.Class;
using System;
using System.Collections.Generic;
using System.Data;
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

namespace Garage_Management_System.Garage
{
    /// <summary>
    /// Interaction logic for FrmSearchPlateNumber.xaml
    /// </summary>
    public partial class FrmSearchPlateNumber : Window
    {
        public FrmSearchPlateNumber()
        {
            InitializeComponent();
        }
        sqlexcute sql = new sqlexcute();
        string vplate_id = string.Empty;
        void load_record(string search)
        {
            try
            {
                DataTable dt = new DataTable();
                // Show data to DataGrid
                List<arr_plateNumber> list = new List<arr_plateNumber>();
                string[] p =
                {
                "plate_number",
                variables.PBranchCode,
                search
            };
                dt = sql.proc_getdata("proc_sql_garage_search", p);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        list.Add(new arr_plateNumber() { Plate_ID = dt.Rows[i]["plate_id"].ToString(), Titile = dt.Rows[i]["titile"].ToString(), Type_ID = dt.Rows[i]["type_id"].ToString(), inputter = dt.Rows[i]["inputter"].ToString() });
                    }

                    dgData.Items.Refresh();
                    dgData.ItemsSource = list;
                    vplate_id = string.Empty;
                }
                else
                {
                    dgData.Items.Refresh();
                    dgData.ItemsSource = list;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, variables.vTittle, MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        void FrmSearchPlateNumber_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                this.Title = "SEARCH PLATE NUMBER";
                load_record("");
            }
            catch { }
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                load_record(txtSearch.Text.Trim());
            }
            catch { }
        }
    }



}
