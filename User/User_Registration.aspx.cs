using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_User_Registration : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "insert into User_Info values('" + txt_id.Text + "','" + txt_name.Text + "','" + rbl_type.Text + "','"+Rbl2.Text+"','" + txt_add.Text + "','" + txt_mob.Text + "','" + txt_pass.Text + "','" + txt_retype.Text +"','No')";
        SqlCommand cmd = new SqlCommand(qr, cn);
        int x = cmd.ExecuteNonQuery();
        Session["Uid"] = txt_id.Text;
        Session["U_Name"] = txt_name.Text;
        cn.Close();
        if (x > 0)
        {
            txt_id.Text = "";
            txt_name.Text = "";
            txt_add.Text = "";
            txt_mob.Text = "";
            txt_pass.Text = "";
            txt_retype.Text = "";
            Label1.Text = "You Have Successfully Registered.....";
            return;
        }
        Label1.Text = "Some Error Occures.......";
    }
}