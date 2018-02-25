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
    public partial class add_book : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("insert into book(book_name,author,publisher,type) values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox7.Text + "','" + DropDownList1.Text + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Book added successfully. Thank You!";

            }


            sqlcon.Close(); 
           
        }
    }
}