<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmHome.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="CW2.Admin.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:rebeccapurple; color:white">
                <strong>Services</strong>
            </div>            
        </div>
        <div class="panel-body">
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Service Name" runat="server" /> 
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

            <asp:GridView ID="gvServices" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="service_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="service_id" HeaderText="Service ID" ReadOnly="True" />
                    <asp:BoundField DataField="serv_name" HeaderText="Service Name" />
                    <asp:BoundField DataField="serv_fee" HeaderText="Service Fee" />
                    <asp:BoundField DataField="serv_description" HeaderText="Description" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True">
                    <ControlStyle BackColor="#00CC00" BorderColor="Aqua" ForeColor="White" />
                    </asp:CommandField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');" />
                        </ItemTemplate>
                        <ControlStyle BackColor="Red" ForeColor="White" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>

        </div>
    </div>
</asp:Content>
