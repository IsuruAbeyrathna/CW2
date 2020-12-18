using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace CW2
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                LCustomer obj = new LCustomer();
                obj.Cus_name = txtname.Text;
                obj.Cus_address = txtaddress.Text;         
                
                obj.Cus_email = Txtemail.Text;
                obj.Cus_phone = txtphone.Text;
                obj.Cus_password = txtpass.Text;

                int result = obj.insertcustomer();
                if (result == 1)
                {
                    lblmsg.ForeColor = Color.Green;
                    lblmsg.Text = "Your are successfuly registered";
                    Timer1.Enabled = true;
                    


                }
                else
                {
                    lblmsg.ForeColor = Color.Red;
                    lblmsg.Text = "Registration is unsuccessfull, please contact administrator";
                }
            }
            catch (Exception ex)
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = ex.Message.ToString();
            }
        }
    }
}