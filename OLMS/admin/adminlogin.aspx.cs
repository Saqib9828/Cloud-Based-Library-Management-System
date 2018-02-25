using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OLMS.admin
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "gg2767" && TextBox3.Text == "123")
            {
                Server.Transfer("~/admin/adminhome.aspx");
            
            }
        }
    }
}