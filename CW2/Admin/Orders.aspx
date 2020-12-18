<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmHome.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="CW2.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYZLMSConnectionString %>" DeleteCommand="DELETE FROM [tbl_order] WHERE [order_id] = @order_id" InsertCommand="INSERT INTO [tbl_order] ([ord_fee], [ord_status], [ord_description], [ord_date], [service_id], [product_id], [cus_id]) VALUES (@ord_fee, @ord_status, @ord_description, @ord_date, @service_id, @product_id, @cus_id)" SelectCommand="SELECT * FROM [tbl_order]" UpdateCommand="UPDATE [tbl_order] SET [ord_fee] = @ord_fee, [ord_status] = @ord_status, [ord_description] = @ord_description, [ord_date] = @ord_date, [service_id] = @service_id, [product_id] = @product_id, [cus_id] = @cus_id WHERE [order_id] = @order_id">
        <DeleteParameters>
            <asp:Parameter Name="order_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ord_fee" Type="String" />
            <asp:Parameter Name="ord_status" Type="String" />
            <asp:Parameter Name="ord_description" Type="String" />
            <asp:Parameter DbType="Date" Name="ord_date" />
            <asp:Parameter Name="service_id" Type="Int32" />
            <asp:Parameter Name="product_id" Type="Int32" />
            <asp:Parameter Name="cus_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ord_fee" Type="String" />
            <asp:Parameter Name="ord_status" Type="String" />
            <asp:Parameter Name="ord_description" Type="String" />
            <asp:Parameter DbType="Date" Name="ord_date" />
            <asp:Parameter Name="service_id" Type="Int32" />
            <asp:Parameter Name="product_id" Type="Int32" />
            <asp:Parameter Name="cus_id" Type="Int32" />
            <asp:Parameter Name="order_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="order_id" DataSourceID="SqlDataSource1" GridLines="None">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="Order Id" InsertVisible="False" ReadOnly="True" SortExpression="order_id">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="25px" Wrap="True" />
            </asp:BoundField>
            <asp:BoundField DataField="ord_fee" HeaderText="Order Fee" SortExpression="ord_fee">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="25px" Wrap="False" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Order Status" SortExpression="ord_status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("ord_status") %>'>
                        <asp:ListItem>Completed</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Dlivered</asp:ListItem>
                        <asp:ListItem>Ongoing</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XYZLMSConnectionString %>" SelectCommand="SELECT DISTINCT [ord_status] FROM [tbl_order]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ord_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ord_description" HeaderText="Description" SortExpression="ord_description" />
            <asp:BoundField DataField="ord_date" HeaderText="Order Date" SortExpression="ord_date" />
            <asp:BoundField DataField="service_id" HeaderText="Service" SortExpression="service_id" />
            <asp:BoundField DataField="product_id" HeaderText="Product" SortExpression="product_id" />
            <asp:BoundField DataField="cus_id" HeaderText="Customer" SortExpression="cus_id" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
            <ControlStyle BackColor="#66CCFF" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Height="15px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    
</asp:Content>
