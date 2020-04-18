using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public class Address
{
    #region properties

        string iMasterID;
        public string MasterID
        {
            get { return iMasterID; }
            set { iMasterID = value; }
        }

        string iSiteAddress;
        public string SiteAddress
        {
            get { return iSiteAddress; }
            set { iSiteAddress = value; }
        }

        string iTLNO;
        public string TLNO
        {
            get { return iTLNO; }
            set { iTLNO = value; }
        }

        string iDescription;
        public string Description
        {
            get { return iDescription; }
            set { iDescription = value; }
        }

        string iStatus;
        public string Status
        {
            get { return iStatus; }
            set { iStatus = value; }
        }

        string iCity;
        public string City
        {
            get { return iCity; }
            set { iCity = value; }
        }

        string iState;
        public string State
        {
            get { return iState; }
            set { iState = value; }
        }

        string iZip;
        public string Zip
        {
            get { return iZip; }
            set { iZip = value; }
        }

        string iInspectionZone;
        public string InspectionZone
    {
            get { return iInspectionZone; }
            set { iInspectionZone = value; }
        }

        string iOccupancy;
        public string Occupancy
        {
            get { return iOccupancy; }
            set { iOccupancy = value; }
        }

        string iJurisdiction;
        public string Jurisdiction
        {
            get { return iJurisdiction; }
            set { iJurisdiction = value; }
        }
    #endregion

    public void ReturnAddressInfo()
    {
        try
        {
            DataTable MyDatatable = new DataTable();
            SqlConnection MyConnection = new SqlConnection();
            SqlCommand MyDataset = new SqlCommand();

            MyConnection.ConnectionString = ConfigurationManager.ConnectionStrings["FireInspection"].ConnectionString;
            MyConnection.Open();
            MyDataset.Connection = MyConnection;
            MyDataset.CommandType = CommandType.StoredProcedure;
            MyDataset.CommandText = "ReturnAddressInfo";
            MyDataset.Parameters.Add("@MasterID", SqlDbType.VarChar, 50).Value = iMasterID;
            MyDatatable.Load(MyDataset.ExecuteReader(), LoadOption.OverwriteChanges);

            iInspectionZone = MyDatatable.Rows[0]["InspectionZone"].ToString();
            iSiteAddress = MyDatatable.Rows[0]["SiteAddress"].ToString();
            iDescription = MyDatatable.Rows[0]["Description"].ToString();
            iCity = MyDatatable.Rows[0]["City"].ToString();
            iState = MyDatatable.Rows[0]["State"].ToString();
            iZip = MyDatatable.Rows[0]["ZipCode"].ToString();
            iStatus = MyDatatable.Rows[0]["Status"].ToString();
            iTLNO = MyDatatable.Rows[0]["TLID"].ToString();
            iOccupancy = MyDatatable.Rows[0]["GeneralOccupancy"].ToString();
            iJurisdiction = MyDatatable.Rows[0]["AddrJur"].ToString();

            MyConnection.Close();
            MyConnection.Dispose();
        }
        catch 
        {

        }

    }

}