using Garage_Management_System.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows;
using Garage_Management_System.FrmSystem;
using Garage_Management_System.Garage;

namespace Garage_Management_System.FrmSystem
{
    /// <summary>
    /// Interaction logic for FrmLogin.xaml
    /// </summary>
    public partial class FrmLogin : Window
    {
        public FrmLogin()
        {
            InitializeComponent();
            xmls xml = new xmls();
            try
            {
                // Start : Checking Connection to database 
                string baseDir = Environment.CurrentDirectory;
                if (variables.Pcon.State == ConnectionState.Closed)
                {
                    xml.ReadXmlLogIn(baseDir + "\\sys.xml");
                    variables.Pcon.ConnectionString = variables.PConnectionString;
                    variables.Pcon.Open();
                    variables.Pcon.Close();
                }

                // End : Checking Connection to database 
                //txtUserlogin.Text = "bongmap@gmail.com";
                txtUserlogin.Text = "reanit";
                txtPassword.Password = "love";
            }
            catch
            {
                MessageBox.Show("Connection failed ! Please contact to IT support!", variables.vTittle, MessageBoxButton.OK, MessageBoxImage.Error);
                Application.Current.Shutdown();
                return;
            }

        }

        sqlexcute sql = new sqlexcute();
        function_customize fun_cus = new function_customize();

        bool IsOK()
        {
            if (txtUserlogin.Text.Trim() == string.Empty)
            {
                txtUserlogin.Focus();
                MessageBox.Show("Please enter your username !", variables.vTittle, MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            else if (txtPassword.Password.ToString() == string.Empty)
            {
                txtPassword.Focus();
                MessageBox.Show("Please enter your password !", variables.vTittle, MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            else if (fun_cus.user_name_exit("USER_EXIT", txtUserlogin.Text.Trim()) == false)
            {
                txtUserlogin.Focus();
                MessageBox.Show("User name doesn't exists in the organization !", variables.vTittle, MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }

            return true;
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            if (IsOK())
            {
                DataTable dt = new DataTable();
                List<parasql> arr = new List<parasql>();
                arr.Add(new parasql { paraname = "@vUserlogin", sqltype = SqlDbType.NVarChar, values = txtUserlogin.Text.Trim() });
                dt = sql.Data_Execute("proc_user_logins", arr);
                if (dt.Rows.Count > 0)
                {
                    bool vpwd = xml_security.ComparePasswords(dt.Rows[0]["user_pwd"].ToString(), txtPassword.Password.ToString());
                    if (vpwd == true)
                    {
                        variables.PBranchCode = dt.Rows[0]["branchcode"].ToString();
                        variables.PInputter = dt.Rows[0]["user_login"].ToString();
                        variables.PProfileID = dt.Rows[0]["profile_id"].ToString();
                        variables.PProfileTitle = dt.Rows[0]["pro_name"].ToString();
                        variables.PUser_ID = dt.Rows[0]["user_id"].ToString();

                        //Log history user login 
                        sql.user_logs("User login to system");

                        this.Hide();
                        MainWindow Main = new MainWindow();
                        Main.ShowDialog();
                    }
                    else
                    {
                        MessageBox.Show(variables.vMsg_user_Invalid, variables.vTittle, MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
        }
    }
}
