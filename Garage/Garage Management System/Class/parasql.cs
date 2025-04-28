using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Garage_Management_System.Class
{
    public class parasql
    {
        public string paraname { get; set; }
        public SqlDbType sqltype { get; set; }
        public dynamic values { get; set; }
    }
}
