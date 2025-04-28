using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Garage_Management_System.Class
{
    internal class function_customize
    {
        sqlexcute sql = new sqlexcute();

        public bool user_name_exit(string vStatus, string vusername)
        {
            DataTable dt = new DataTable();
            List<parasql> arr = new List<parasql>();
            arr.Add(new parasql { paraname = "@CMD", sqltype = SqlDbType.NVarChar, values = vStatus });
            arr.Add(new parasql { paraname = "@vBranchcode", sqltype = SqlDbType.NVarChar, values = vusername });
            dt = sql.Data_Execute("proc_sql_excute", arr);
            if (dt.Rows.Count <= 0)
            {
                return false;
            }
            return true;
        }
    }
}
