using System.ServiceModel;

namespace blood_bank_service
{
    [ServiceContract]
    public interface IService1
    {
        // TODO: Add your service operations here
        [OperationContract]
        string GetData(int value);
    }
}
