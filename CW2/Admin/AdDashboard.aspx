<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmHome.Master" AutoEventWireup="true" CodeBehind="AdDashboard.aspx.cs" Inherits="CW2.Admin.AdDashboard" %>
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
            <div class="count">3</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Pending Orders</div>
    </div>
</div>
<div class="tile wide invoice">
    <div class="header">
        <div class="center">
            <div class="count">10</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Dilivered Orders</div>
    </div>
</div>
<div class="tile wide quote">
    <div class="header">
        <div class="center">
            <div class="count">13</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">New Order Requests</div>
    </div>
</div>
<div class="tile wide invoice">
    <div class="header">
        <div class="center">
            <div class="count">9</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Cancelled Orders</div>
    </div>
</div>
    <div class="tile wide quote">
    <div class="header">
        <div class="center">
            <div class="count">Rs.10000</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Total Revenue</div>
    </div>
</div>
    <div class="tile wide invoice">
    <div class="header">
        <div class="center">
            <div class="count">6</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Total Customers</div>
    </div>
</div>
<div class="tile wide quote">
    <div class="header">
        <div class="center">
            <div class="count">4</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Total Users</div>
    </div>
</div>
</asp:Content>
