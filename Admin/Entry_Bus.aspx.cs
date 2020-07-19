using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Entry_Bus : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "insert into Bus_Info values('"+txt_bus_id.Text+"','"+txt_route_name.Text+"','"+txt_start_p.Text+"','"+txt_End_p.Text+"','"+txt_driver_id.Text+"','"+txt_driver_name.Text+"','"+txt_driver_add.Text+"','"+txt_driver_mob.Text+"',"+txt_no_seats.Text+")";
        SqlCommand cmd = new SqlCommand(qr,cn);
        int x= cmd.ExecuteNonQuery();
        cn.Close();
        if (x>0)
        {
            txt_bus_id.Text = "";
            txt_route_name.Text = "";
            txt_start_p.Text = "";
            txt_End_p.Text = "";
            txt_driver_id.Text = "";
            txt_driver_mob.Text = "";
            txt_driver_name.Text = "";
            txt_driver_add.Text = "";
            txt_no_seats.Text = "";
            Server.Transfer("Save_msg.aspx");
            return;
        }
        

        
        
    }
}