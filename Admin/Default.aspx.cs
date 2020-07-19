using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void  Button1_Click(object sender, EventArgs e)
    {
    
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select * from Admin_Info where admin_id='" +txtUser.Text+ "'";
        SqlCommand cmd = new SqlCommand(qr,cn);
        SqlDataReader dr = cmd.ExecuteReader();
        bool found = dr.Read();
        if (!found)
        {
            lblmsg.Text = "User Id does not exist...";
            return;
        }
        else if (dr[1].ToString() != txtpassword.Text)
        {
            lblmsg.Text = "Password is Incorrect...";
            return;
        }
        Session["Admin_ID"] = txtUser.Text;
        Session["Admin_Name"] = dr[2].ToString();
        Server.Transfer("Home.aspx");
        cn.Close();
    }
}