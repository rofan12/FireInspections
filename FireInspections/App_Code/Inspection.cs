using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public class Inspection
{
    #region properties
        string iINSPTRANS;
        public string INSPTRANS
        {
            get { return iINSPTRANS; }
            set { iINSPTRANS = value;}
        }

        string iMasterID;
        public string MasterID
        {
            get { return iMasterID;}
            set { iMasterID = value;}
        }
        string iINSPDATE;
        public string INSPDATE
        {
            get { return iINSPDATE; }
            set { iINSPDATE = value; }
        }

        string iEmployeeID;
        public string EmployeeID
        {
            get { return iEmployeeID; }
            set { iEmployeeID = value; }
        }

        string iINSPINPECTOR;
        public string INSPINPECTOR
        {
            get { return iINSPINPECTOR; }
            set { iINSPINPECTOR = value; }
        }

        string iINSPTYPE;
        public string INSPTYPE
        {
            get { return iINSPTYPE; }
            set { iINSPTYPE = value; }
        }

        string iCodeID;
        public string CodeID
        {
            get { return iCodeID; }
            set { iCodeID = value; }
        }
        string iINSPVIOLATION;
        public string INSPVIOLATION
        {
            get { return iINSPVIOLATION; }
            set { iINSPVIOLATION = value; }
        }
        int iINSPCORRECTION;
        public int INSPCORRECTION
        {
            get { return iINSPCORRECTION; }
            set { iINSPCORRECTION = value; }
        }
        string iINSPCOMMENTS;
        public string INSPCOMMENTS
        {
            get { return iINSPCOMMENTS; }
            set { iINSPCOMMENTS = value; }
        }
        string iINSPTIME;
        public string INSPTIME
        {
            get { return iINSPTIME; }
            set { iINSPTIME = value; }
        }
        int iINSPFinished;
        public int INSPFinished
        {
            get { return iINSPFinished; }
            set { iINSPFinished = value; }
        }
        string iInspStatus;
        public string InspStatus
        {
            get { return iInspStatus; }
            set { iInspStatus = value; }
        }
        int iInspComp;
        public int InspComp
        {
            get { return iInspComp; }
            set { iInspComp = value; }
        }
        string iSystemToolName;
        public string SystemToolName
        {
            get { return iSystemToolName; }
            set { iSystemToolName = value; }
        }
        string iNoticeNo;
        public string NoticeNo
        {
            get { return iNoticeNo; }
            set { iNoticeNo = value; }
        }
        int iRefered;
        public int Refered
        {
            get { return iRefered; }
            set { iRefered = value; }
        }
        string iReferedTo;
        public string ReferedTo
        {
            get { return iReferedTo; }
            set { iReferedTo = value; }
        }
        string iPresentedTo;
        public string PresentedTo
        {
            get { return iPresentedTo; }
            set { iPresentedTo = value; }
        }
        int iReIinspection;
        public int ReIinspection
        {
            get { return iReIinspection; }
            set { iReIinspection = value; }
        }
        string iReInspectionPeriod;
        public string ReInspectionPeriod
        {
            get { return iReInspectionPeriod; }
            set { iReInspectionPeriod = value; }
        }
        string iMethodOfDelivery;
        public string MethodOfDelivery
        {
            get { return iMethodOfDelivery; }
            set { iMethodOfDelivery = value; }
        }
        string iFormType;
        public string FormType
        {
            get { return iFormType; }
            set { iFormType = value; }
        }
        string iStartDate;
        public string StartDate
        {
            get { return iStartDate; }
            set { iStartDate = value; }
        }
        string iFinishDate;
        public string FinishDate
        {
            get { return iFinishDate; }
            set { iFinishDate = value; }
        }
        int iTenentImprovment;
        public int TenentImprovment
        {
            get { return iTenentImprovment; }
            set { iTenentImprovment = value; }
        }
        string iPresentedToPhone;
        public string PresentedToPhone
        {
            get { return iPresentedToPhone; }
            set { iPresentedToPhone = value; }
        }
        string iPresentedToAddr1;
        public string PresentedToAddr1
        {
            get { return iPresentedToAddr1; }
            set { iPresentedToAddr1 = value; }
        }
        string iPresentedToAddr2;
        public string PresentedToAddr2
        {
            get { return iPresentedToAddr2; }
            set { iPresentedToAddr2 = value; }
        }
        int iInspApproved;
        public int InspApproved
        {
            get { return iInspApproved; }
            set { iInspApproved = value; }
        }

        int iOKToCover;
        public int OKToCover
        {
            get { return iOKToCover; }
            set { iOKToCover = value; }
        }

        int iTemp_FinalOccApproved;
        public int Temp_FinalOccApproved
        {
            get { return iTemp_FinalOccApproved; }
            set { iTemp_FinalOccApproved = value; }
        }
        int iSortOrder;
        public int SortOrder
        {
            get { return iSortOrder; }
            set { iSortOrder = value; }
        }
        int iFinalNotice;
        public int FinalNotice
        {
            get { return iFinalNotice; }
            set { iFinalNotice = value; }
        }
        string iUpdatedBy;
        public string UpdatedBy
        {
            get { return iUpdatedBy; }
            set { iUpdatedBy = value; }
        }

    #endregion

    public void AddUpdateInspection ()
    {
        SqlConnection conSQL = new SqlConnection();

        conSQL.ConnectionString = ConfigurationManager.ConnectionStrings["FireInspection"].ConnectionString;
        SqlConnection.ClearPool(conSQL);
        conSQL.Open();
        SqlCommand commSQL = new SqlCommand();
        commSQL.Connection = conSQL;
        commSQL.CommandType = CommandType.StoredProcedure;
        commSQL.CommandText = "spUpdateInsertInspection";
        commSQL.Parameters.Add("@INSPTRANS", SqlDbType.VarChar, 50).Value = iINSPTRANS;
        commSQL.Parameters.Add("@MasterID", SqlDbType.VarChar, 50).Value = iMasterID;
        commSQL.Parameters.Add("@INSPDATE", SqlDbType.VarChar, 25).Value = iINSPDATE;
        commSQL.Parameters.Add("@EmployeeID", SqlDbType.VarChar, 10).Value = iEmployeeID;
        commSQL.Parameters.Add("@INSPINPECTOR", SqlDbType.VarChar, 25).Value = iINSPINPECTOR;
        commSQL.Parameters.Add("@INSPTYPE", SqlDbType.VarChar, 200).Value = iINSPTYPE;
        commSQL.Parameters.Add("@CodeID", SqlDbType.VarChar, 25).Value = iCodeID;
        commSQL.Parameters.Add("@INSPVIOLATION", SqlDbType.VarChar, 25).Value = iINSPVIOLATION;
        commSQL.Parameters.Add("@INSPCORRECTION", SqlDbType.VarChar, 25).Value = iINSPCORRECTION;
        commSQL.Parameters.Add("@INSPCOMMENTS", SqlDbType.NText).Value = iINSPCOMMENTS;
        commSQL.Parameters.Add("@INSPTIME", SqlDbType.Real).Value = iINSPTIME;
        commSQL.Parameters.Add("@INSPFinished", SqlDbType.Int).Value = iINSPFinished;
        commSQL.Parameters.Add("@InspStatus", SqlDbType.VarChar,50).Value = iInspStatus;
        commSQL.Parameters.Add("@InspComp", SqlDbType.Int).Value = iInspComp;
        commSQL.Parameters.Add("@SystemToolName", SqlDbType.VarChar, 50).Value = iSystemToolName;
        commSQL.Parameters.Add("@NoticeNo", SqlDbType.VarChar, 50).Value = iNoticeNo;
        commSQL.Parameters.Add("@Refered", SqlDbType.Int).Value = iRefered;
        commSQL.Parameters.Add("@ReferedTo", SqlDbType.VarChar, 50).Value = iReferedTo;
        commSQL.Parameters.Add("@PresentedTo", SqlDbType.VarChar, 50).Value = iPresentedTo;
        commSQL.Parameters.Add("@ReIinspection", SqlDbType.Int).Value = iReIinspection;
        commSQL.Parameters.Add("@ReInspectionPeriod", SqlDbType.Int).Value = iReInspectionPeriod;
        commSQL.Parameters.Add("@MethodOfDelivery", SqlDbType.VarChar, 50).Value = iMethodOfDelivery;
        commSQL.Parameters.Add("@FormType", SqlDbType.VarChar, 50).Value = iFormType;
        commSQL.Parameters.Add("@StartDate", SqlDbType.VarChar, 50).Value = iStartDate;
        commSQL.Parameters.Add("@FinishDate", SqlDbType.VarChar, 50).Value = iFinishDate;
        commSQL.Parameters.Add("@TenentImprovment", SqlDbType.Int).Value = iTenentImprovment;
        commSQL.Parameters.Add("@PresentedToPhone", SqlDbType.VarChar, 50).Value = iPresentedToPhone;
        commSQL.Parameters.Add("@PresentedToAddr1", SqlDbType.VarChar, 50).Value = iPresentedToAddr1;
        commSQL.Parameters.Add("@PresentedToAddr2", SqlDbType.VarChar, 50).Value = iPresentedToAddr2;
        commSQL.Parameters.Add("@InspApproved", SqlDbType.Int).Value = iInspApproved;
        commSQL.Parameters.Add("@OKToCover", SqlDbType.Int).Value = iOKToCover;
        commSQL.Parameters.Add("@Temp_FinalOccApproved", SqlDbType.Int).Value = iTemp_FinalOccApproved;
        commSQL.Parameters.Add("@SortOrder", SqlDbType.Int).Value = iSortOrder;
        commSQL.Parameters.Add("@FinalNotice", SqlDbType.Int).Value = iFinalNotice;
        commSQL.Parameters.Add("@UpdatedBy", SqlDbType.VarChar, 50).Value = iUpdatedBy;



        commSQL.ExecuteNonQuery();

        conSQL.Close();
    }


}