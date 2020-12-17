using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW2.Admin
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Reports/EmpRep.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Reports/CusRep.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Reports/SalesRep.aspx");
        }
    }
}