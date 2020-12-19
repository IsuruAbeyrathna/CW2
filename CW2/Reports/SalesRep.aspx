<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesRep.aspx.cs" Inherits="CW2.Reports.SalesRep" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="1024px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="764px">
            <LocalReport ReportPath="Reports\Report3.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSetor" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYZLMSConnectionString %>" SelectCommand="SELECT * FROM [tbl_order]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
