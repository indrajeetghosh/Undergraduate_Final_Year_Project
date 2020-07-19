using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select * from User_Info where college_id='"+TextBox1.Text+"'";
        SqlCommand cmd = new SqlCommand(qr,cn);
        SqlDataReader dr = cmd.ExecuteReader();
        bool found=dr.Read();
        if (!found)
        {
           lblmsg.Text = "User Id does not exist...";
            return;
        }
        else if (dr[6].ToString() != TextBox2.Text)
        {
            lblmsg.Text = "Password is Incorrect...";
            return;
        }
            Session["Uid"] = TextBox1.Text;
            Session["U_Name"] = dr[1].ToString();
            Session["U_type"]=dr[2].ToString();
            Session["Gender"]=dr[3].ToString();
            Session["U_Add"] = dr[4].ToString();
            Session["U_Mob"] = dr[5].ToString();
            Server.Transfer("Home.aspx");

        cn.Close();
    }
}