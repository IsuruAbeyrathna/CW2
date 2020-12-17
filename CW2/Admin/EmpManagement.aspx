<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmHome.Master" AutoEventWireup="true" CodeBehind="EmpManagement.aspx.cs" Inherits="CW2.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
             <div class="panel-heading" style="background-color:rebeccapurple; color:white">
                <strong>Employee Management</strong>
             </div>
        </div>
        <div class="panel-body">
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Name" runat="server" /> 
                    <div class="input-group">
                        <span class="input-group-addon" > <i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Address" runat="server" /> 
                    <div class="input-group">
                        <span class="input-group-addon" > <i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="Txtaddr" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Email" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Phone" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtphone" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label Text="Gender" runat="server" />
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtgender" CssClass="form-control" runat="server" />
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
            <div class="col-md-4">
                <asp:Button ID="btnSubmit" Text="Submit" runat="server" CssClass="btn btn-danger" Font-Bold="true" OnClick="btnSubmit_Click"/>
                <asp:Button ID="btnReset" Text="Reset" runat="server" CssClass="btn btn-success" Font-Bold="true" OnClick="btnReset_Click"/>            
                
                


            </div>
            <br />
            <br />
            <br />
            <br />
            <br />           
        </div>
            <div>
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="emp_id" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="emp_id" HeaderText="Employee Id" ReadOnly="True" />
                    <asp:BoundField DataField="emp_name" HeaderText="Name" />
                    <asp:BoundField DataField="emp_address" HeaderText="Address" />
                    <asp:BoundField DataField="emp_email" HeaderText="Email" />
                    <asp:BoundField DataField="emp_phone" HeaderText="Phone" />
                    <asp:BoundField DataField="emp_gender" HeaderText="Gender" />
                    <asp:BoundField DataField="emp_status" HeaderText="Status" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                    <ControlStyle BackColor="#00CC00" ForeColor="#CCFFCC" />
                    </asp:CommandField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');" />
                        </ItemTemplate>
                        <ControlStyle BackColor="Red" ForeColor="White" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            </div>
    </div>

        
</asp:Content>
