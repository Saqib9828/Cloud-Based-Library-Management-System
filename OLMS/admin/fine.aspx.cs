using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OLMS.admin
{
    public partial class fine : System.Web.UI.Page
    {
        int pd, day, total;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pd = Convert.ToInt16(TextBox5.Text);
            day = Convert.ToInt16(TextBox1.Text);
            total = pd * day;
            Label2.Text = total.ToString();
        }
    }
}