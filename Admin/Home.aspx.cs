using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Home : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
    protected void btn_approve_Click1(object sender, EventArgs e)
    {
        Button bc = (Button)sender;
        string c_id = bc.CommandName.ToString();
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select * from transaction_1 where college_id='" + c_id +"'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["User_college_id"] = dr[0].ToString();
        Session["Bus_id_with_user"] = dr[6].ToString();
        int total_seat = Convert.ToInt32(dr[13].ToString());
        if (total_seat > 0)
        {
            cn.Close();
            total_seat = total_seat - 1;
            cn.Open();
            string qr2 = "update Bus_Info set total_seats='" + total_seat +"' where bus_id='" + Session["Bus_id_with_user"] + "'";
            SqlCommand cmd2 = new SqlCommand(qr2, cn);
            cmd2.ExecuteNonQuery();
            cn.Close();
            seat_book();
            return;
        }
        Response.Redirect("Final_Book2.aspx");
        cn.Close();
        seat_book();
    }
    void seat_book()
    {
        cn.Open();
        string qr = "update transaction_1 set approve='Yes' where college_id='" + Session["User_college_id"] + "'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        GridView1.DataBind();
        cn.Close();
        
    }

}