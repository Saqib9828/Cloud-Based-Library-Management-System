using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OLMS.admin
{
    public partial class book_issue : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {


            TextBox8.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd2 = new SqlCommand("Update book set Issue_Status='Issue' where book_id='" + DropDownList1.Text + "'", sqlcon);
            sqlcon.Open();
            sqlcmd2.ExecuteNonQuery();

            {

               

            }


            sqlcon.Close(); 




            SqlCommand sqlcmd = new SqlCommand("insert into issue_book_data(Book_id,book_name,member_id,member_name,date_of_issue,date_of_return) values('" + DropDownList1.Text + "','" + Label2.Text + "','" + DropDownList2.Text + "','" + Label3.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Book issue successfully. Thank You!";

            }


            sqlcon.Close(); 
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            sqlcon.Open();

            string book_name = ("select book_name from book where book_id='" + DropDownList1.Text + "'");
            SqlCommand cmd2 = new SqlCommand(book_name, sqlcon);
            SqlDataReader sdrB = cmd2.ExecuteReader();

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