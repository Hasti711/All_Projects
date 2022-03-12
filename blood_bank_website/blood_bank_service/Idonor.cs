using System;
using System.ServiceModel;

namespace blood_bank_service
{
    [ServiceContract]
    public interface Idonor
    {
        [OperationContract]
        string d_reg(string nm, string g, DateTime dt1, int phno, string email, string add, DateTime dt2, string s, string c, int pin, string b_bk_nm_d, string bgrp, string go, int gid, int pass);

        [OperationContract]
        string d_lg(string nm, int pass);

        [OperationContract]
        string d_p_up(string nm, string g, DateTime dt1, int phno, string email, string add, DateTime dt2, string s, string c, int pin, string bgrp, string go, int gid);

        [OperationContract]
        string donor_user(DateTime dt5,string b_bk_nm);
    }
}
