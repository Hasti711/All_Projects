using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace blood_bank_service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }
    }
}
