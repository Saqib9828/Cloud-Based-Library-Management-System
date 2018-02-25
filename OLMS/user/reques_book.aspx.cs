using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OLMS.user
{
    public partial class reques_book : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("insert into request_book(Book_id,book_name,member_id,member_name) values('" + DropDownList1.Text + "','" + Label2.Text + "','" + DropDownList2.Text + "','" + Label3.Text + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Your request has been forwarded to the Admin. Thank You!";

            }


            sqlcon.Close(); 
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            sqlcon.Open();

            string Issue_Status = ("select Issue_Status from book where book_id='" + DropDownList1.Text + "'");
            SqlCommand cmdIssue_Status = new SqlCommand(Issue_Status, sqlcon);
            SqlDataReader sdrIssue_Status = cmdIssue_Status.ExecuteReader();

            while (sdrIssue_Status.Read())
            {
                Label4.Text = sdrIssue_Status["Issue_Status"].ToString();
            }
            sqlcon.Close();







            sqlcon.Open();

            string book_name = ("select book_name from book where book_id='" + DropDownList1.Text + "'");
            SqlCommand cmd = new SqlCommand(book_name, sqlcon);
            SqlDataReader sdrB = cmd.ExecuteReader();

            while (sdrB.Read())
            {
                Label2.Text = sdrB["book_name"].ToString();
            }
            sqlcon.Close();

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            sqlcon.Open();

            string USER_NAME = ("select USER_NAME from users where USRE_ID='" + DropDownList2.Text + "'");
            SqlCommand cmd3 = new SqlCommand(USER_NAME, sqlcon);
            SqlDataReader sdrC = cmd3.ExecuteReader();

            while (sdrC.Read())
            {
                Label3.Text = sdrC["USER_NAME"].ToString();
            }
            sqlcon.Close();
        }
    }
}