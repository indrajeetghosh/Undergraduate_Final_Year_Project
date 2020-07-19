using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_User_Details : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void rbluser_SelectedIndexChanged(object sender, EventArgs e)
    {
        Search_By.Visible = true;
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select college_id,user_name,gender,user_add,user_mob from transaction_1 where user_type='"+rbluser.Text+"' and approve='Yes'";
        SqlCommand cmd = new SqlCommand(qr,cn);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Search_By.Visible = true;
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select college_id,user_name,gender,user_add,user_mob from transaction_1 where user_type='" + rbluser.Text + "' and college_id ='" + TextBox1.Text + "' and approve='Yes'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        TextBox1.Text = "";
        cn.Close();
    }
}