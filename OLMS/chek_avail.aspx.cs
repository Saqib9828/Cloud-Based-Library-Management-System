using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OLMS
{
    public partial class chek_avail : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("select student_id from student_list  where student_id='" + TextBox1.Text + "'", sqlcon);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["ID"] = TextBox1.Text;
                Server.Transfer("~/signup.aspx");
                
            }
            else
            {
                Label1.Text = "Sorry! You are not a student of our University.";


            }
            sqlcon.Close();
        
        }
    }
}