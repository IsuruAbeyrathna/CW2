<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="CustomerDashboard.aspx.cs" Inherits="CW2.Customer.CustomerDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/Dash.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="tile wide invoice">
    <div class="header">
        <div class="center">
            <div class="count">
                <asp:Label ID ="lblCountor" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="75px" Width="75px" />
            </div>
            <div class="title"></div>
            
        </div>
    </div>
    <div class="body">
        <div class="title">Total Orders</div>
    </div>
</div>
<div class="tile wide quote">
    <div class="header">
        <div class="center">
            <div class="count">0</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Pending Orders</div>
    </div>
    </div>
<asp:Table ID="Table1" runat="server">
</asp:Table>
</asp:Content>