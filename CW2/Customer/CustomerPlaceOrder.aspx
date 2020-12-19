<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="CustomerPlaceOrder.aspx.cs" Inherits="CW2.Customer.CustomerPlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 250px;
            height:50px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            right: 0;
            top: 0;
            width: 277px;
            left: 260px;
        }
        .auto-style4 {
            width: 100%;
            height:200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Orders</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="auto-style4">
            <tr>
                <td class="auto-style1">Add/Update Order</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Order Id</td>
                <td>
                    <asp:TextBox ID="txtOrderId" runat="server" Width="157px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Description</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Width="434px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Services</td>
                <td>
                    <asp:GridView ID="grdServiceList" runat="server" AutoGenerateColumns="False" EmptyDataText="There are no data records to display." Width="574px">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkServiceItem" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="service_id" HeaderText="Service Id" SortExpression="service_id" />
                            <asp:BoundField DataField="serv_name" HeaderText="Service Name" SortExpression="serv_name" />
                            <asp:BoundField DataField="serv_fee" HeaderText="Service Fee" SortExpression="serv_fee" />
                            <asp:BoundField DataField="serv_description" HeaderText="Description" SortExpression="serv_description" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td>
                    <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">My orders</td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grdCustomerOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" EmptyDataText="There are no data records to display." OnRowCommand="grdCustomerOrders_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="936px">
                    <Columns>
                        <asp:BoundField DataField="order_id" HeaderText="Order Id" ReadOnly="True" SortExpression="order_id" />
                        <asp:BoundField DataField="ord_fee" HeaderText="Order Fee" SortExpression="ord_fee" />
                        <asp:BoundField DataField="ord_status" HeaderText="Order Status" SortExpression="ord_status" />
                        <asp:BoundField DataField="ord_description" HeaderText="Description" SortExpression="ord_description" />
                        <asp:BoundField DataField="ord_date" HeaderText="Order Date" SortExpression="ord_date" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
</asp:Content>