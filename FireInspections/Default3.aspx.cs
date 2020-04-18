using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.TextBoxOnMasterPage.Text = "Hello World";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //((site)Master).TextBoxOnMasterPage.Text = TextBox1.Text;

        //when you add <%@ MasterType VirtualPath = "~/site.master" %> 
        Master.TextBoxOnMasterPage.Text = TextBox1.Text;
    }
}