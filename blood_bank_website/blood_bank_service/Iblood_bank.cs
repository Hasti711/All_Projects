using System;
using System.Data;
using System.Runtime.Serialization;
using System.ServiceModel;

namespace blood_bank_service
{
    [ServiceContract]
    public interface Iblood_bank
    {
        [OperationContract]
        string b_bk_reg(string b_bk_nm, string cat, DateTime dt3, string add,string st, string city,string bgrp, int phno, string email, int pass);

        [OperationContract]
        string b_bk_lg(string email, int pass);

        [OperationContract]
        string b_bk_p_up(string b_bk_nm, string cat, DateTime dt3, string add,string st, string city, int phno, string email);

        [OperationContract]
        string b_bk_up(string cat,string bgrp, DateTime dt4);

        [OperationContract]
        ReturnProfile GetReturnProfile(string email);

        [OperationContract]
        ReturnProfile GetProfileSome(string email);

        [OperationContract]
        ReturnProfile[] GetSReturnProfile(string email);
    }

    [DataContract]
    public class ReturnProfile
    {
        public ReturnProfile(string s6,string s7,DateTime dt6,string s8,string s9,long i2,string s10,string s12)
        {
            s1 = s6;
            s2 = s7;
            dt5 = dt6;
            s3 = s8;
            s4 = s9;
            i1 = i2;
            s5 = s10;
            s11 = s12;
        }

        public ReturnProfile(DateTime dt7,string s11,string s13)
        {
            dt5 = dt7;
            s2 = s11;
            s3 = s13;
        }

        public ReturnProfile(string[] bbk_s,long i3,DateTime dt8)
        {
            s1 = bbk_s[0];
            s2 = bbk_s[1];
            s3 = bbk_s[2];
            s4 = bbk_s[3];
            s5 = bbk_s[4];
            s11 = bbk_s[5];
            i1 = i3;
            dt5 = dt8;
        }

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
        public string s11 { get; set; }

        [DataMember]
        public long i1 { get; set; }

        [DataMember]
        public DateTime dt5 { get; set; }
    }
}
