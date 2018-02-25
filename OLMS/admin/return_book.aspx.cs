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
    public partial class return_book : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
      
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand sqlcmd2 = new SqlCommand("Update book set Issue_Status='Not Issue' where book_id='" + DropDownList3.Text + "'", sqlcon);
            sqlcon.Open();
            sqlcmd2.ExecuteNonQuery();

            {



            }


            sqlcon.Close(); 










            sqlcon.Open();

            string book_name = ("DELETE FROM issue_book_data WHERE Book_id='" + DropDownList3.Text + "' and member_id='" + DropDownList4.Text + "'");
            SqlCommand cmd2 = new SqlCommand(book_name, sqlcon);
            SqlDataReader sdrB = cmd2.ExecuteReader();

            {

                Label1.Text = "Book Return successfully. Thank You!";

            }
            sqlcon.Close();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            sqlcon.Open();

            string book_name = ("select book_name from book where book_id='" + DropDownList3.Text + "'");
            SqlCommand cmd2 = new SqlCommand(book_name, sqlcon);
            SqlDataReader sdrB = cmd2.ExecuteReader();

            while (sdrB.Read())
            {
                Label2.Text = sdrB["book_name"].ToString();
            }
            sqlcon.Close();
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            sqlcon.Open();

            string USER_NAME = ("select USER_NAME from users where USRE_ID='" + DropDownList4.Text + "'");
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