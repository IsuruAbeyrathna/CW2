<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmHome.Master" AutoEventWireup="true" CodeBehind="UserAccounts.aspx.cs" Inherits="CW2.Admin.UserAccounts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
 <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:rebeccapurple; color:white">
                <strong>User Accounts</strong>
            </div>
            
        </div>
        <div class="panel-body">
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="UserName" runat="server" /> 
                    <div class="input-group">
                        <span class="input-group-addon" > <i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtuname" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Password" runat="server" /> 
                    <div class="input-group">
                        <span class="input-group-addon" > <i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="Txtpass" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Employee Id" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtempid" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Type" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtType" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Status" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtstatus" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <br />
            <br />            
            <br />
            <div class="col-lg-4">
                <asp:Button ID="btnSubmit" Text="Submit" runat="server" CssClass="btn btn-danger" Font-Bold="true" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnReset" Text="Reset" runat="server" CssClass="btn btn-success" Font-Bold="true" OnClick="btnReset_Click" />
             </div>
            <br />
            <br />
            <br />

        </div>
     
     <br />
            <br />
            <br />
                <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="usr_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:BoundField DataField="usr_id" HeaderText="User Id" ReadOnly="True" />
                <asp:BoundField DataField="usr_name" HeaderText="UserName" />
                <asp:BoundField DataField="usr_password" HeaderText="Password" />
                <asp:BoundField DataField="emp_id" HeaderText="Emp ID" />
                <asp:BoundField DataField="usr_type" HeaderText="Type">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="usr_status" HeaderText="Status">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                <ControlStyle BackColor="#00CC00" ForeColor="#99FFCC" />
                </asp:CommandField>
                <asp:CommandField />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"/>
                    </ItemTemplate>
                    <ControlStyle BackColor="Red" ForeColor="White" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            </div>
    </div>
</asp:Content>
