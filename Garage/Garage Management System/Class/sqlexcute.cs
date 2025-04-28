using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Garage_Management_System.Class
{
    class sqlexcute
    {
        private SqlCommand _Cmd = new SqlCommand();
        public SqlCommand Cmd
        {
            set { _Cmd = value; }
        }
        public void setParameter(List<parasql> para)
        {
            _Cmd = new SqlCommand();
            _Cmd.Parameters.Clear();
            foreach (parasql tmp in para)
            {
                _Cmd.Parameters.Add(tmp.paraname, tmp.sqltype).Value = tmp.values;
            }
        }
        public void connection()
        {
            if (variables.Pcon.State == ConnectionState.Closed)
            {
                variables.Pcon.ConnectionString = variables.PConnectionString;
                variables.Pcon.Open();
            }
        }

        public DataTable ExecuteNon(string vProcedure, List<parasql> para)
        {
            DataTable dt = new DataTable();
            _Cmd = new SqlCommand();
            _Cmd.Parameters.Clear();
            foreach (parasql tmp in para)
            {
                _Cmd.Parameters.Add(tmp.paraname, tmp.sqltype).Value = tmp.values;
            }
            connection();
            _Cmd.Connection = variables.Pcon;
            _Cmd.CommandType = CommandType.StoredProcedure;
            _Cmd.CommandText = vProcedure;
            _Cmd.ExecuteNonQuery();
            variables.Pcon.Close();
            return dt;
        }

        public DataTable Data_Execute(string vProcedure, List<parasql> para)
        {
            DataTable dt = new DataTable();
            _Cmd = new SqlCommand();
            _Cmd.Parameters.Clear();
            string str = string.Empty;
            foreach (parasql tmp in para)
            {
                _Cmd.Parameters.Add(tmp.paraname, tmp.sqltype).Value = tmp.values;
                str = str + "N'" + tmp.values + "',";
            }
            connection();
            _Cmd.Connection = variables.Pcon;
            _Cmd.CommandType = CommandType.StoredProcedure;
            _Cmd.CommandText = vProcedure;
            dt.Load(_Cmd.ExecuteReader());
            variables.Pcon.Close();
            return dt;
        }

        public DataTable dt_getdata(string vSql)
        {
            connection();
            DataTable dt = new DataTable();
            using (SqlCommand p_cmd = new SqlCommand(vSql, variables.Pcon))
            {
                if (variables.Pcon.State == ConnectionState.Closed)
                {
                    variables.Pcon.Open();
                }
                p_cmd.CommandTimeout = 99999999;
                dt.Load(p_cmd.ExecuteReader());
                variables.Pcon.Close();
            }
            return dt;
        }
        public DataSet ds_getdata(string vSql)
        {
            connection();
            DataSet ds = new DataSet();
            using (SqlCommand p_cmd = new SqlCommand(vSql, variables.Pcon))
            {
                if (variables.Pcon.State == ConnectionState.Closed)
                {
                    variables.Pcon.Open();
                }
                p_cmd.CommandTimeout = 99999999;
                SqlDataAdapter da = new SqlDataAdapter(p_cmd);
                da.Fill(ds);
                da.Dispose();
                variables.Pcon.Close();
            }
            return ds;
        }

        bool HasRecords(DataSet dataSet)
        {
            foreach (DataTable dt in dataSet.Tables) if (dt.Rows.Count > 0) return true;
            return false;
        }

        public void loadComboBox(ComboBox Cbo, string SQL, string Val, string ID)
        {
            DataSet ds = new DataSet();
            ds = ds_getdata(SQL);
            if (HasRecords(ds))
            {
                Cbo.ItemsSource = ds.Tables[0].DefaultView;
                Cbo.DisplayMemberPath = ds.Tables[0].Columns[Val].ToString();
                Cbo.SelectedValuePath = ds.Tables[0].Columns[ID].ToString();
            }
        }

        public DataTable proc_getdata(string vproc_name, string[] param)
        {
            DataTable dt = new DataTable();
            string str = vproc_name + " ";
            for (int i = 0; i < param.Length; i++)
            {
                str = str + "N'" + param[i] + "',";
            }
            str = str.Substring(0, str.Length - 1);
            using (SqlCommand p_cmd = new SqlCommand(str, variables.Pcon))
            {
                if (variables.Pcon.State == ConnectionState.Closed)
                {
                    variables.Pcon.Open();
                }
                p_cmd.CommandTimeout = 99999999;
                dt.Load(p_cmd.ExecuteReader());
                variables.Pcon.Close();
            }
            return dt;
        }

        public bool IsNumeric(object Expression)
        {
            double retNum;
            bool isNum = Double.TryParse(Convert.ToString(Expression), System.Globalization.NumberStyles.Any, System.Globalization.NumberFormatInfo.InvariantInfo, out retNum);
            return isNum;
        }

        public bool cbo_empty(ComboBox cbo)
        {
            if (cbo.SelectedItem == null || cbo.SelectedIndex == -1 || string.IsNullOrEmpty(cbo.Text) || cbo.SelectedValue.ToString() == string.Empty)
            {
                return false;
            }
            return true;
        }
        public string Rights(string value, int length)
        {
            if (String.IsNullOrEmpty(value)) return string.Empty;
            return value.Length <= length ? value : value.Substring(value.Length - length);
        }
        public string Left(string str, int length)
        {
            return str.Substring(0, Math.Min(length, str.Length));
        }
        public double Rounds(decimal Value)
        {
            int Values = (int)Value;
            try
            {
                string s = Values.ToString();
                string s1 = "";
                if (Convert.ToDouble(Rights(Values.ToString(), 2)) < 50)
                {
                    Values = Convert.ToInt32(Left(Values.ToString(), s.Length - 2));
                    s1 = Values.ToString() + "00";
                    Values = Convert.ToInt32(s1);
                }
                else
                {
                    Values = Convert.ToInt32(Left(Values.ToString(), s.Length - 2));
                    s1 = Values.ToString() + "00";
                    Values = Convert.ToInt32(s1);
                    Values = Values + 100;
                }

            }
            catch { }
            return Values;
        }

        public void user_logs(string vActivity)
        {
            try
            {
                List<parasql> arr = new List<parasql>();
                arr.Add(new parasql { paraname = "@vBranchcode", sqltype = SqlDbType.NVarChar, values = variables.PBranchCode });
                arr.Add(new parasql { paraname = "@vAction", sqltype = SqlDbType.NVarChar, values = vActivity });
                arr.Add(new parasql { paraname = "@vInputter", sqltype = SqlDbType.NVarChar, values = variables.PInputter });
                Data_Execute("proc_user_logs", arr);
            }
            catch { }
        }
    }
}
