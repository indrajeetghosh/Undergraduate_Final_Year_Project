using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Change_Password : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select * from Admin_Info where admin_id='" + txt_id.Text + "'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        bool found = dr.Read();
        if (!found)
        {
            txt_id.Text = "";
            Label1.Text = "User Id does not exist...";
            cn.Close();
            return;
        }
        else if (dr[1].ToString() != txt_pass.Text)
        {
            txt_id.Text = "";
            Label1.Text = "Password is Incorrect...";
            cn.Close();
            return;
        }
        else
        {
            cn.Close();
            cn.Open();
            string sr = "update Admin_Info set admin_pass='"+txt_confirm.Text+"' where admin_pass='"+txt_pass.Text+"'";
            SqlCommand smd = new SqlCommand(sr,cn);
            smd.ExecuteNonQuery();
            cn.Close();
            txt_id.Text = "";
            Label1.Text = "You Have Successfully changed Your Password...";
        }

    }
}