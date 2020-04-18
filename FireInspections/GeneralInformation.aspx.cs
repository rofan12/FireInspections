using System;

public partial class GeneralInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        FillHeader();

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
}