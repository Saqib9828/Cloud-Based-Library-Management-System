using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OLMS.user
{
    public partial class change_pass : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

     
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["USRE_ID"] as String;
            Label4.Text = Session["USRE_ID"] as String;
            sqlcon.Open();
            string USER_NAME = ("select USER_NAME from users where USRE_ID='" + TextBox1.Text + "'");
            SqlCommand cmd = new SqlCommand(USER_NAME, sqlcon);
            SqlDataReader sdr = cmd.ExecuteReader();

            while (sdr.Read())
            {
                Label1.Text = sdr["USER_NAME"].ToString();
            }
            sqlcon.Close();



            sqlcon.Open();

            string PASSWORD = ("select PASSWORD from users  where USRE_ID='" + TextBox1.Text + "'");
            SqlCommand cmd2 = new SqlCommand(PASSWORD, sqlcon);
            SqlDataReader sdrB = cmd2.ExecuteReader();

            while (sdrB.Read())
            {
                TextBox7.Text = sdrB["PASSWORD"].ToString();
            }
            sqlcon.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == TextBox7.Text)
            {
                if (TextBox6.Text == TextBox5.Text)
                {
                    SqlCommand sqlcmd = new SqlCommand("Update users set PASSWORD='" + TextBox6.Text + "' where USRE_ID='" + TextBox1.Text + "'", sqlcon);
                    sqlcon.Open();
                    sqlcmd.ExecuteNonQuery();

                    {

                        Label3.Text = "Password Changed Succesfully.";

                    }
                }
                else
                {
                    Label3.Text = "Confirmation Password Failed.";
                }
            }
            else
            {
                Label3.Text = "Incorrect Old Password.";
            }

            sqlcon.Close();

 
        }

    }
}