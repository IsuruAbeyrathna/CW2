<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CW2.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/bootstrap-4.5.3-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <h1>Welcome to my Web app!</h1>
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
        <div class="form-group">
            <label>Username:</label>
            <asp:TextBox ID="txtuname" runat="server" CssClass="col-3 form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Password:</label>
            <asp:TextBox ID="txtpass" runat="server" CssClass="col-3 form-control" TextMode="Password"></asp:TextBox>
        </div>
         <div class="form-group">
             <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnlogin_Click" />
        </div>
        Not customer yet? <a href="cust_register.aspx">Register here</a>
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
