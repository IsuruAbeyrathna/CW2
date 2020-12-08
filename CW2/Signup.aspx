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
</head>
<body style="overflow:hidden; margin:0; background-image:url('Pic/bvk2.jpg')">
    <form id="form1" runat="server">
    <div class="panel-img">
        <img src="Pic/tp2.png"/>               
    </div>
        <div style="position:absolute; z-index:1;" id="layer1">
            <div class="modal-body" style="margin:30px 0px 0px 550px;">
                <div class="row">
                    <div class="row">
                        <div class="col-xs-6">                            
                            <div class="form-group">
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                                <asp:Label Text="First Name" runat="server" />
                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" />
                                <span class="help-block"></span>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                <asp:Label Text="Last Name" runat="server" />
                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" />
                                <span class="help-block"></span>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                <asp:Label Text="Contact No" runat="server" />
                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" />
                                <span class="help-block"></span>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                                <asp:Label Text="City" runat="server" />
                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" />
                                <span class="help-block"></span>
                            </div>
                            <div class="form-group">
                                <asp:Label Text="Password" runat="server" />
                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" />
                                <span class="help-block"></span>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnlogin" runat="server" Text="Register" CssClass="btn btn-primary" />
                            </div>                            
                    
                            </div>

                                
                        </div>

                    </div>

                </div>

            </div>
        
    </form>
        <script>
        function autoResizeDiv()
        {
            document.getElementById('main').style.height = window.innerHeight +'px';
        }
        window.onresize = autoResizeDiv;
        autoResizeDiv();
    </script>
</body>
</html>
