using System;
using System.Security.Cryptography;
using System.Text;
using System.Xml;

namespace Garage_Management_System.Class
{
    class xmls
    {

        TripleDESCryptoServiceProvider DES = new TripleDESCryptoServiceProvider();
        MD5CryptoServiceProvider M5 = new MD5CryptoServiceProvider();
        string PublicKey = "Garage Management System 2025";
        public byte[] MD5Code(string values)
        {
            return M5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(values));
        }
        public string EncryptData(string StrEncrypt)
        {
            DES.Key = MD5Code(PublicKey);
            DES.Mode = CipherMode.ECB;
            byte[] buf = ASCIIEncoding.ASCII.GetBytes(StrEncrypt);
            return Convert.ToBase64String(DES.CreateEncryptor().TransformFinalBlock(buf, 0, buf.Length));
        }
        public string DecryptData(string DecryptString)
        {
            try
            {
                DES.Key = MD5Code(PublicKey);
                DES.Mode = CipherMode.ECB;
                byte[] Buff = Convert.FromBase64String(DecryptString);
                return ASCIIEncoding.ASCII.GetString(DES.CreateDecryptor().TransformFinalBlock(Buff, 0, Buff.Length));
            }
            catch
            {
                return "FALSE";
            }
        }
        public string ReadXmlLogIn(string part)
        {
            XmlDocument MyXml = new XmlDocument();
            MyXml.Load(part);
            XmlNode Node;
            Node = MyXml.DocumentElement;

            foreach (XmlNode n in Node.ChildNodes)
            {
                if (n.Name == "i")
                {
                    variables.PServerName = n.InnerText;
                }
                else if (n.Name == "d")
                {
                    variables.PDatabaseName = n.InnerText;
                }
                else if (n.Name == "u")
                {
                    variables.PUserName = DecryptData(n.InnerText);
                }
                else if (n.Name == "p")
                {
                    variables.PPassword = DecryptData(n.InnerText);
                }
            }
            return variables.PConnectionString =
                    "Server=" + variables.PServerName + ";" +
                    "User=" + variables.PUserName + ";" +
                    "Password=" + variables.PPassword + ";" +
                    "Database=" + variables.PDatabaseName;
        }
    }
}
