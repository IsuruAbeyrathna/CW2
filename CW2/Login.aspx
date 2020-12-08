<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CW2.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/bootstrap-4.5.3-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Styles/Stylelogin.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body style="background-image:url('Pic/bvk2.jpg')">
    <form id="form1" runat="server">
    <div class="panel-img">
        <img src="Pic/Panel.png"/>
               
    </div>
        <div style="position:absolute; z-index:1;" id="layer1">
            <div class="modal-body" style="margin:30px 0px 0px 550px;">
                <div class="row">
                    <div class="row">
                        <div class="col-xs-6">                            
                            <div class="form-group">
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                                <label>Username:</label>
                                <asp:TextBox ID="txtuname" runat="server" class="form-control" title="Enter Your Username" plaseholder="UserName"></asp:TextBox>
                                <span class="help-block"></span>
                            </div>

                            <div class="form-group">
                                <label>Password:</label>
                                <asp:TextBox ID="txtpass" runat="server" class="form-control" title="Enter Your Password" plaseholder="********"></asp:TextBox>
                                <span class="help-block"></span>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnlogin_Click" /> &nbsp; &nbsp; <a href="cust_register.aspx">Forgot Password?</a>
                            </div>

                                Not customer yet? <a href="cust_register.aspx">Register here</a>
                        </div>

                    </div>

                </div>

            </div>

        </div>
    </form>

        
    <script type="text/javascript">
        $(document).ready(function () {
            /*Client side validation */
            $("#btnlogin").click(function (e) {
                var uname = $("#txtuname").val();
                var pass = $("#txtpass").val();
       
                if (uname == "" || pass == "") {
                    alert("Please enter both username and password");
                    e.preventDefault();
                }
            });
        });
    </script>
</body>
</html>
