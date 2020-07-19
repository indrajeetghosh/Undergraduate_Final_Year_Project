using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_Menu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin_Id"] == null)
        {
            Response.Redirect("Default.aspx");
            return;
        }
        Label1.Text = "Hello "+"<style='color:green'>"+Session["Admin_Name"]+"</style>"+" Have a Nice Day";
    }
}
