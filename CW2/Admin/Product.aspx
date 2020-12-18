<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmHome.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="CW2.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:rebeccapurple; color:white">
                <strong>Products</strong>
            </div>            
        </div>
        <div class="panel-body">
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Product Name" runat="server" /> 
                    <div class="input-group">
                        <span class="input-group-addon" > <i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtsname" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Fee" runat="server" /> 
                    <div class="input-group">
                        <span class="input-group-addon" > <i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtfee" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Description" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtdes" CssClass="form-control" runat="server" />
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

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="product_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="Product Id" ReadOnly="True" />
                    <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="prod_fee" HeaderText="Product Fee" />
                    <asp:BoundField DataField="prod_description" HeaderText="Product Description" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>

            </div>  
            </div>
</asp:Content>
