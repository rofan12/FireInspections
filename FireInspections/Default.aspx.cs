using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{


    protected void ViewResults_Click(object sender, EventArgs e)
    {
        SearchResults.DataBind();
    }

    protected void ClearCriteria_Click(object sender, EventArgs e)
    {
        AddressNumber.Text = "";
        StreetName.Text = "";
        BusinessName.Text = "";
        SearchResults.DataBind();
    }


}