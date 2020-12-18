<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CW2.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/bootstrap-4.5.3-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Styles/Stylelogin.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="fonts/material-icon/css/material-design-iconic-font.min.css" rel="stylesheet" />
        <script runat="server">
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (lblmsg.Text == "Your are successfuly registered")
            {
                Response.Redirect("Login.aspx");
            }
        }
    </script>
</head>
<body>
<div class="main">
        <!-- Sign up form -->
    
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form runat="server">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="5000" Enabled="false"></asp:Timer>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>                            
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="txtname" runat="server" CssClass="col-12 form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox type="email" ID="Txtemail" runat="server" CssClass="col-12 form-control" placeholder="Your Email"></asp:TextBox>

                                
                            </div>
                             <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox type="text" ID="txtaddress" placeholder="Your Address" runat="server" CssClass="col-12 form-control"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label for="Contact No"><i class="zmdi zmdi-phone"></i></label>
                                <asp:TextBox type="text" ID="txtphone" runat="server" CssClass="col-12 form-control" placeholder="Your Contact No"></asp:TextBox>

                                
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox type="password" ID="txtpass" runat="server" CssClass="col-12 form-control" placeholder="Password"></asp:TextBox>

                                
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <asp:TextBox type="password" ID="txtcpass" runat="server" CssClass="col-12 form-control" placeholder="Repeat your password"></asp:TextBox>

                               
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" class="form-submit" />
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">                        
                        <figure><img src="Images/sssss.jpg" /></figure>
                        <a href="#" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </div> 
    
    <script src="js/main.js"></script>
    <script src="js/jquery-ui.min.js"></script>

     <script type="text/javascript">
        $(document).ready(function () {
            $("#btnregister").click(function (e) {
                var cname = $("#txtname").val();
                var caddr = $("#txtaddress").val();
                var cemail = $("#Txtemail").val();
                var cphone = $("#txtphone").val();
                var cpass = $("#txtpass").val();
                var ccpass = $("#txtcpass").val();

                var cname_rule = /^[a-zA-Z\s\.]*$/;
                
                if (!cname_rule.test(cname)) {
                    alert("Please enter valid name");
                    e.preventDefault();
                }

                if (caddr=="") {
                    alert("Please enter valid address");
                    e.preventDefault();
                }

                var cemail_rule = /^[a-zA-Z\d\.]*\@[a-zA-Z\d\-\.]*\.[a-zA-Z]{2,4}$/;
                if (!cemail_rule.test(cemail)) {
                    alert("Please enter valid email address");
                    e.preventDefault();
                }

                var cphone_rule = /^\d{3}\-\d{7}$/;
                if (!cphone_rule.test(cphone)) {
                    alert("Please enter valid phone number");
                    e.preventDefault();
                }

                if (cpass == "" || ccpass == "") {
                    alert("Please enter both password and confirm password");
                    e.preventDefault();
                }

                if (cpass != ccpass) {
                    alert("Confirm password does not match with password");
                    e.preventDefault();
                }
            });
        });
    </script>

</body>
</html>
