using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW2
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string uname, pass;
            uname = txtuname.Text;
            pass = txtpass.Text;

            if (uname == "" || pass == "")
            {
                lblmsg.Text = "Please enter both username and password";
                return;
            }
            try
            {
                Login obj = new Login();
                obj.Uname = uname;
                obj.Password = pass;
                int result = obj.validateLogin(1);
                if (result == 0)
                {
                    lblmsg.Text = "Invalid username or password, try again";
                }
                else if (result == 1)
                {
                    lblmsg.Text = "Your account has been locked, please contact administrator";
                }
                else if (result == 2)
                {
                    Session["uname"] = uname;
                    Response.Redirect("cust_dashboard.aspx");
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message.ToString();
            }
        }
    }
}