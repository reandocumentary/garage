using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Garage_Management_System.Class
{
    class arr_data_issue
    {
        public string Issue_ID { get; set; }
        public string Category { get; set; }
        public string SubCategory { get; set; }
        public string Issue { get; set; }
        public string Responder { get; set; }
    }

    class arr_draft_issue
    {
        public string ID { get; set; }
        public string Category { get; set; }
        public string SubCategory { get; set; }
        public string Issue { get; set; }
    }

    class arr_Category_issue
    {
        public string ID { get; set; }
        public string Category { get; set; }
        public string Disable { get; set; }
    }

    class arr_SubCategory_issue
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Category { get; set; }
        public string Disable { get; set; }
    }


    public static class Issue
    {
        public static string Tittleview { get; set; }
        public static string issue_id { get; set; }
        public static string issue_action { get; set; }
    }
}
