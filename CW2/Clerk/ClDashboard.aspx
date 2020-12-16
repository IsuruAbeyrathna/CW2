<%@ Page Title="" Language="C#" MasterPageFile="~/Clerk/ClerkHome.Master" AutoEventWireup="true" CodeBehind="ClDashboard.aspx.cs" Inherits="CW2.Clerk.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../Content/Dash.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tile wide invoice">
    <div class="header">
        <div class="center">
            <div class="count">2</div>
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
            <div class="count">10</div>
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
            <div class="count">3</div>
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
            <div class="count">3</div>
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
            <div class="count">1</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Cancelled Orders</div>
    </div>
</div>

    <div class="tile wide invoice">
    <div class="header">
        <div class="center">
            <div class="count">1</div>
            <div class="title"></div>
        </div>
    </div>
    <div class="body">
        <div class="title">Total Customers</div>
    </div>
</div>
</asp:Content>
