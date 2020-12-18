<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="TrackCustomerOrders.aspx.cs" Inherits="CW2.Customer.TrackCustomerOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    My Order Status
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="grdCustomerOrders" runat="server" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="934px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="order_id" HeaderText="Order Id" SortExpression="order_id" />
                        <asp:BoundField DataField="ord_fee" HeaderText="Order Fee" SortExpression="ord_fee" />
                        <asp:BoundField DataField="ord_status" HeaderText="Order Status" SortExpression="ord_status" />
                        <asp:BoundField DataField="ord_description" HeaderText="Description" SortExpression="ord_description" />
                        <asp:BoundField DataField="ord_date" HeaderText="Order Date" SortExpression="ord_date" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

