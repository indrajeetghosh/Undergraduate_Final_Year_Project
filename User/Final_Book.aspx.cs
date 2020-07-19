using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class User_Final_Book : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "----------Seat Booking Slip----------";
        cn = new SqlConnection(Class1.cs);
        cn.Open();
        string qr = "select * from transaction_1 where college_id='" + Session["Uid"] + "'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Table1.Rows.Clear();
            Table2.Rows.Clear();
            TableHeaderRow thr = new TableHeaderRow();
            Table1.Rows.Add(thr);
            thr.BackColor = Color.BlueViolet;
            thr.ForeColor = Color.White;
            thr.Height = 20;
            string[] str = { "College_ID", "User_Name", "Photo", "User_Type", "Mobile", "Gender", "Address" };
            for (int i = 0; i < 7; i++)
            {
                TableHeaderCell thc = new TableHeaderCell();
                thc.Text = str[i];
                thc.HorizontalAlign = HorizontalAlign.Left;
                thr.Cells.Add(thc);
            }


            TableRow tr = new TableRow();
            Table1.Rows.Add(tr);
            TableCell[] tcc = new TableCell[7];
            for (int c = 0; c < tcc.Length; c++)
            {
                tcc[c] = new TableCell();
                tr.Cells.Add(tcc[c]);
            }
            tcc[0].Text = dr[0].ToString();
            tcc[1].Text = dr[1].ToString();
            System.Web.UI.WebControls.Image img = new System.Web.UI.WebControls.Image();
            img.ImageUrl = ("~/Images/" + dr[11].ToString());
            img.Height = 80;
            tcc[2].Controls.Add(img);
            tcc[3].Text = dr[2].ToString();
            tcc[4].Text = dr[3].ToString();
            tcc[5].Text = dr[4].ToString();
            tcc[6].Text = dr[5].ToString();


            TableHeaderRow thr2 = new TableHeaderRow();
            Table2.Rows.Add(thr2);
            thr2.BackColor = Color.BlueViolet;
            thr2.ForeColor = Color.White;
            thr2.Height = 20;
            string[] str2 = { "Bus_ID", "Route_Name", "Driver_Name", "Driver_Mobile" };
            for (int i = 0; i < 4; i++)
            {
                TableHeaderCell thc2 = new TableHeaderCell();
                thc2.Text = str2[i];
                thc2.HorizontalAlign = HorizontalAlign.Left;
                thr2.Cells.Add(thc2);
            }
            TableRow tr2 = new TableRow();
            Table2.Rows.Add(tr2);
            TableCell[] tcc2 = new TableCell[4];
            for (int c = 0; c < tcc2.Length; c++)
            {
                tcc2[c] = new TableCell();
                tr2.Cells.Add(tcc2[c]);
            }
            tcc2[0].Text = dr[6].ToString();
            tcc2[1].Text = dr[7].ToString();
            tcc2[2].Text = dr[8].ToString();
            tcc2[3].Text = dr[9].ToString();
            
        }
        cn.Close();
    }
}