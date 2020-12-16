﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmHome.Master" AutoEventWireup="true" CodeBehind="UserAccounts.aspx.cs" Inherits="CW2.Admin.UserAccounts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    This is User Accounts
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:#d73b3b; color:white"></div>
            <strong>Insert Customer</strong>
        </div>
        <div class="panel-body">
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="First Name" runat="server" /> 
                    <div class="input-group">
                        <span class="input-group-addon" > <i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Last Name" runat="server" /> 
                    <div class="input-group">
                        <span class="input-group-addon" > <i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="Txtlname" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Address" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Email" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Phone" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Status" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Password" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-4">

                <asp:Button Text="btnSubmit" runat="server" />

            </div>
        </div>
    </div>
</asp:Content>
