using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Book_Seat : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            cn = new SqlConnection(Class1.cs);
            cn.Open();
            string qr = "select bus_id,route_name,driver_name,driver_mobile,total_seats from Bus_Info where bus_id='" + Session["bus_id_per_user"] + "'";
            SqlCommand cmd = new SqlCommand(qr, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lbl_id.Text = Session["Uid"].ToString();
            lbl_name.Text = Session["U_Name"].ToString();
            lbl_type.Text = Session["U_type"].ToString();
            lbl_mob.Text = Session["U_Mob"].ToString();
            lbl_gender.Text = Session["Gender"].ToString();
            lbl_add.Text = Session["U_Add"].ToString();
            txt_busID.Text = dr[0].ToString();
            txt_RouteName.Text = dr[1].ToString();
            txt_DriverName.Text = dr[2].ToString();
            txt_DriverMobile.Text = dr[3].ToString();
            txt_tot_seat.Text = dr[4].ToString();
            txt_seat.Text = "1";
            cn.Close();
        }
    }
    protected void book_now_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "insert into transaction_1 values ('"+lbl_id.Text+"','"+lbl_name.Text+"','"+lbl_type.Text+"','"+lbl_mob.Text+"','"+lbl_gender.Text+"','"+lbl_add.Text+"','"+txt_busID.Text+"','"+txt_RouteName.Text+"','"+txt_DriverName.Text+"','"+txt_DriverMobile.Text+"','"+txt_seat.Text+"','"+FileUpload1.FileName+"','No','"+txt_tot_seat.Text+"')";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        FileUpload1.SaveAs(Server.MapPath("~/Images/"+FileUpload1.FileName));
        Response.Redirect("Final_Book.aspx");

    }
}