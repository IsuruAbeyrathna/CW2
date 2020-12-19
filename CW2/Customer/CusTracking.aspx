<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="CusTracking.aspx.cs" Inherits="CW2.Customer.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <asp:Panel runat="server"> 
        <div>
            <h2>Tracking</h2>

            <br />

            Search : <asp:TextBox ID="Txtsearch" runat="server" />
            <asp:Button ID="ButSearch" Text="Search" runat="server" OnClick="ButSearch_Click" />
            <br />
            <br />
            <br />
            <br />
            <div>
                            <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Reords Found!" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataFormatString="order_id" HeaderText="Order Id" />
                    <asp:BoundField DataField="ord_description" HeaderText="Order Description" />
                    <asp:BoundField DataField="ord_status" HeaderText="Order Status" />
                </Columns>
                <EmptyDataRowStyle BackColor="#CCFF99" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            </div>


        </div> 

    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
