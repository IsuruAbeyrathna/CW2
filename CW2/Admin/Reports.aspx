<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmHome.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="CW2.Admin.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Reports</h2>

    <br />
    <div>
    <asp:Button Text="Customer Detail Report" runat="server" class="btn btn-outline-danger" BackColor="#3399FF" OnClick="Unnamed1_Click" />         
        
    </div>
    <br />
    <div>
    <asp:Button Text="Sales Report" runat="server" class="btn btn-outline-success" BackColor="#00FFCC" OnClick="Unnamed2_Click" />    

    </div>
    <br />
    <div>
    <asp:Button Text="Employee Report" runat="server" class="btn btn-outline-Warning" BackColor="#0099FF" OnClick="Unnamed3_Click" /> 

    </div>
       
</asp:Content>
