using System;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class Inspections : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            GetData(Convert.ToInt16((hidRecordNumber.Value)));
            FillHeader();

        }
    }

    private void FillHeader()
    {
        Address myAddress = new Address();
        myAddress.MasterID = Request.QueryString["MasterID"];
        myAddress.ReturnAddressInfo();
        Master.lblSiteAddress.Text = myAddress.SiteAddress;
        Master.lblTLID.Text = myAddress.TLNO;
        Master.lblStatus.Text = myAddress.Status;
        Master.lblDescription.Text = myAddress.Description;
        Master.lblCity.Text = myAddress.City;
        Master.lblState.Text = myAddress.State;
        Master.lblZip.Text = myAddress.Zip;
        Master.lblINSPZone.Text = myAddress.InspectionZone;
        Master.lblJurisdiction.Text = myAddress.Jurisdiction;

    }


    private void GetData(int recordNumber)
    {
        try
        {
            DataView dv = (DataView)sqlInspections.Select(DataSourceSelectArguments.Empty);


            if (dv.Count == recordNumber)
            {
                hidRecordNumber.Value = Convert.ToString(recordNumber - 1);
                return;
            }

            DataRowView drv = dv[recordNumber];

            hidInspTransNo.Value = Convert.ToString(drv["Insptrans#"]);
            lblNoticeNo.Text = Convert.ToString(drv["NoticeNoDisplay"]) + "-" + Convert.ToString(drv["SortOrder"]);
            HiddenNoticeNo.Value = Convert.ToString(drv["NoticeNo"]);

            DateTime myDate = Convert.ToDateTime(drv["INSPDATE"]);
            InspDate.Text = myDate.ToString("MM/dd/yyyy");


            string employeeID = Convert.ToString(drv["CodeID"]);
            if (ddInspectedBy.Items.FindByValue(employeeID) != null)
            {
                ddInspectedBy.SelectedValue = employeeID;
            }

            lblEmployeeName.Text = Convert.ToString(drv["INSPINPECTOR"]);

            string codeID = Convert.ToString(drv["CodeID"]);
            if (ddInspectionType.Items.FindByValue(codeID) != null) // or IndVal.ToString()
            {
                ddInspectionType.SelectedValue = codeID;
            }

            InspTime.Text = Convert.ToString(drv["INSPTIME"]);
            Comments.Text = Convert.ToString(drv["INSPCOMMENTS"]);
            InspName.Text = Convert.ToString(drv["PresentedTo"]);

            string methodDel = Convert.ToString(drv["MethodOfDelivery"]);
            if (ddMethodOfDelivery.Items.FindByValue(methodDel) != null) // or IndVal.ToString()
            {
                ddMethodOfDelivery.SelectedValue = methodDel;
            }

            BusinessName.Text = Convert.ToString(drv["InspText1"]);
            EmailAddress.Text = Convert.ToString(drv["InspText4"]);
            MailingAddress.Text = Convert.ToString(drv["PresentedToAddr1"]);
            Phone.Text = Convert.ToString(drv["PresentedToPhone"]);
            CityStateZip.Text = Convert.ToString(drv["PresentedToAddr2"]);
            Fax.Text = Convert.ToString(drv["InspText2"]);
            Cell.Text = Convert.ToString(drv["InspText3"]);
            chkPreCitation.Checked = Convert.ToBoolean(drv["FinalNotice"]);
            chkReinspection.Checked = Convert.ToBoolean(drv["ReIinspection"]);
            Duration.Text = Convert.ToString(drv["ReInspectionPeriod"]);

            DateTime myStartDate = Convert.ToDateTime(drv["StartDate"]);
            StartDate.Text = myStartDate.ToString("MM/dd/yyyy");

            bool HasFinishDate = string.IsNullOrEmpty(Convert.ToString(drv["FinishDate"]));
            if (HasFinishDate == false)
            {
                DateTime myFinishDate = Convert.ToDateTime(drv["FinishDate"]);
                FinishDate.Text = myFinishDate.ToString("MM/dd/yyyy");
            }

            chkFinished.Checked = Convert.ToBoolean(drv["INSPFinished"]);
            ddReferredTo.SelectedValue = Convert.ToString(drv["ReferedTo"]);
            hidRecordNumber.Value = Convert.ToString(recordNumber);
            SortOrder.Text = Convert.ToString(drv["SortOrder"]);
        }

        catch (Exception e)
        {

        }
    }

    protected void btnPrevious_Click(object sender, EventArgs e)
    {
        int i = Convert.ToInt16(hidRecordNumber.Value);
        if (i != 0)
        {
            i -= 1;
        };
        hidRecordNumber.Value = Convert.ToString(i);
        GetData(i);
    }


    protected void btnNext_Click(object sender, EventArgs e)
    {

        int i = Convert.ToInt16(hidRecordNumber.Value);
        i += 1;
        hidRecordNumber.Value = Convert.ToString(i);
        GetData(i);
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inspections.aspx?MasterID=436D1D2C-EFBF-43B8-93E0-EE691B08DDFD&NoticeNo=17-FRADT9414207", true);
    }
    protected void gridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        // grdViolations.EditIndex = e.NewEditIndex;
        grdViolations.EditIndex = -1;

    }
    protected void gridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdViolations.EditIndex = -1;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Inspection MyInspection = new Inspection();

        MyInspection.INSPTRANS = hidInspTransNo.Value;
        MyInspection.MasterID = Request.QueryString["MasterID"];
        MyInspection.NoticeNo = HiddenNoticeNo.Value;
        MyInspection.INSPDATE = InspDate.Text;
        MyInspection.EmployeeID = ddInspectedBy.SelectedValue;
        MyInspection.CodeID = ddInspectionType.SelectedValue;
        MyInspection.INSPTIME = InspTime.Text;
        MyInspection.INSPCOMMENTS = Comments.Text;
        MyInspection.SortOrder = Int32.Parse(SortOrder.Text);
        //   @INSPTIME REAL= null,
        //@INSPFinished BIT = 0,
        //@InspStatus VARCHAR(50)= null,
        //@InspComp BIT = 0,
        //@SystemToolName VARCHAR(50)= null,
        //@NoticeNo VARCHAR(50)= null,
        //@Refered BIT = 0,
        //@ReferedTo VARCHAR(50)= null,
        //@PresentedTo VARCHAR(50)= null,
        //@ReIinspection BIT = 0,
        //@ReInspectionPeriod INT= null,
        //@MethodOfDelivery VARCHAR(50)= null,
        //@FormType VARCHAR(50) = 'MAINT',
        //@StartDate SMALLDATETIME= null,
        //@FinishDate SMALLDATETIME= null,
        //@TenentImprovment BIT = 0,
        //@PresentedToPhone VARCHAR(50)= null,
        //@PresentedToAddr1 VARCHAR(150)= null,
        //@PresentedToAddr2 VARCHAR(150)= null,
        //@InspApproved BIT = 0,
        //@OKToCover BIT = 0,
        //@Temp_FinalOccApproved INT= null,
        //@SortOrder INT= null,
        //@FinalNotice BIT = 0,
        //@UpdatedBy VARCHAR(30)= null



        MyInspection.AddUpdateInspection();
    }







}