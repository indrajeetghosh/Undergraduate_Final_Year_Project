using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_Search_Bus : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!Page.IsPostBack)
        {
            Search_by_Bus_id.Visible = false;
            Search_By_Route.Visible = false;
            DropDownList1.Items.Add("---select---");
            cn = new SqlConnection(Class1.cs);
            cn.Open();
            string qr = "select distinct route_name from Bus_Info";
            SqlCommand cmd = new SqlCommand(qr, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[0].ToString());
            }
            cn.Close();
        }

    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select bus_id,route_name,start_point,end_point,driver_name,driver_mobile,total_seats from Bus_Info where bus_id='"+TextBox1.Text+"'";
        SqlCommand cmd = new SqlCommand(qr,cn);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        cn.Close();
    }
    
        
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Search_by_Bus_id.Visible = false;
        Search_By_Route.Visible = false;
        if (RadioButtonList1.SelectedIndex == 0)
        {
            Label1.Text = "";
            TextBox1.Text = "";
            Search_by_Bus_id.Visible = true;
            Search_By_Route.Visible = false;
            GridView1.Visible = false;
            return;

        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            Label1.Text = "";
            DropDownList1.SelectedIndex = 0;
            Search_By_Route.Visible = true;
            Search_by_Bus_id.Visible = false;
            GridView1.Visible = false;
            return;
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            GridView1.Visible = false;
            Label1.Text = "Please Select Route....";
            return;
        }
        Label1.Text = "";
        GridView1.Visible = true;
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select bus_id,route_name,start_point,end_point,driver_name,driver_mobile,total_seats from Bus_Info where route_name='" + DropDownList1.Text + "'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        cn.Close();
    }
    protected void Button_Book_Click(object sender, EventArgs e)
    {
        Button book = (Button)sender;
        string bus_id = book.CommandName.ToString();
        Session["bus_id_per_user"]=bus_id.ToString();
        Server.Transfer("Book_Seat.aspx");
    }
}