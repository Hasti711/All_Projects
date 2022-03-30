using System;
using System.Runtime.Serialization;
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
        string donor_user(DateTime dt5,string b_bk_nm,string email);

        [OperationContract]
        ReturnDProfile GetDReturnProfile(string email);

        [OperationContract]
        ReturnDProfile ReturnD(string email);
    }

    [DataContract]
    public class ReturnDProfile
    {
        public ReturnDProfile(string s10,string s11,DateTime d3, long l4, string s12,string s13,DateTime d4,string s14,string s15,long l5,string s16,string s17,string s18,long l6)
        {
            s1 = s10;
            s2 = s11;
            d1 = d3;
            l1 = l4;
            s3 = s12;
            s4 = s13;
            d2 = d4;
            s5 = s14;
            s6 = s15;
            l2 = l5;
            s7 = s16;
            s8 = s17;
            s9 = s18;
            l3 = l6;
        }

        public ReturnDProfile(DateTime d5)
        {
            d2 = d5;
        }

        [DataMember]
        public DateTime d1 { get; set; }

        [DataMember]
        public DateTime d2 { get; set; }

        [DataMember]
        public long l1 { get; set; }

        [DataMember]
        public long l2 { get; set; }

        [DataMember]
        public long l3 { get; set; }

        [DataMember]
        public string s1 { get; set; }

        [DataMember]
        public string s2 { get; set; }

        [DataMember]
        public string s3 { get; set; }

        [DataMember]
        public string s4 { get; set; }

        [DataMember]
        public string s5 { get; set; }

        [DataMember]
        public string s6 { get; set; }
        
        [DataMember]
        public string s7 { get; set; }

        [DataMember]
        public string s8 { get; set; }

        [DataMember]
        public string s9 { get; set; }
    }
}
