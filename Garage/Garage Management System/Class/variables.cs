using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Garage_Management_System.Class
{
    class variables
    {
        public static string vlastVersion = "0.0.0";
        public static string vNewVersion = "0.0.1";
        public static string vReleaseDate = "22-05-2025";
        public static string vTittle = "Garage Management System v " + vNewVersion;

        ////------------------Message Tittle

        public static string vMsg_user_register = "User account has been created successfully !";
        public static string vMsg_insert = "Data has been inserted successfully !";
        public static string vMsg_draft = "Record inserted to draft successfully !";
        public static string vMsg_update = "Data has been updated successfully !";
        public static string vMsg_delete = "Data has been deleted successfully !";
        public static string vMsg_user_Invalid = "Invalid username & password  !";
        public static string vMsg_Invalid = "Invalid record searching , Please verify again !";
        public static string vMsg_Accept = "Issue has been assigned !";
        public static string vMsg_Issue = "Issue has been updated successfully !";
        public static string vMsg_current_pwd_Invalid = "Invalid current password !";
        public static string vMsg_pwd_reset = "Password has been changed successfully !";
        public static string vMsg_Report = "Report no data displayed , Please try again !";
        public static string vMsg_Draft = "Draft has been removed successfully !";




        //------------------------ Connection Server -----------------------
        public static SqlConnection Pcon = new SqlConnection();
        public static string PServerName = "";
        public static string PDatabaseName = "";
        public static string PUserName = "";
        public static string PPassword = "";
        public static string PConnectionString = "";

        //--------------public Necessary variables------------------
        public static string PUser_ID = "";
        public static string PInputter = "";
        public static string PIdCard = "";
        public static string PBranchCode = "";
        public static string PSubBranchCode = "";
        public static string PProfileID = "";
        public static string PProfileTitle = "";

        //--------------public from tittle------------------
        public static string vFrm_Draft = "Form view draft V." + vNewVersion;
        public static string vFrm_V_Issue = "Form view issue in progress V." + vNewVersion;


        //--------------public variables Fix------------------
        public static string vDraft_Fix = "V_DRAFT";
        public static string vIssue_Fix = "V_ISSUE";
        public static string vGuidelines_Fix = "\\Document\\guidelines.pdf";

    }
}
