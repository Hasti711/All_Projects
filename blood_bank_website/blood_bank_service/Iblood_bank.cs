using System;
using System.ServiceModel;

namespace blood_bank_service
{
    [ServiceContract]
    public interface Iblood_bank
    {
        [OperationContract]
        string b_bk_reg(string b_bk_nm, string cat, DateTime dt3, string add, string city, int phno, string email, int pass);

        [OperationContract]
        string b_bk_lg(string email, int pass);

        [OperationContract]
        string b_bk_p_up(string b_bk_nm, string cat, DateTime dt3, string add, string city, int phno, string email);

        [OperationContract]
        string b_bk_up(string cat, DateTime dt4);
    }
}
