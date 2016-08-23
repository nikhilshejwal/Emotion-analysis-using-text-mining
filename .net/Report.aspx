<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/WebUserControl.ascx" TagPrefix="wuc" TagName="w1" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <wuc:w1 ID="d1" runat="server" />
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 637px; left: 253px; height: 549px; width: 767px;">
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="763px">
                <LocalReport ReportPath="Report.rdlc">
                    <DataSources>
                       <%-- <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />--%>
                        <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Emotion analysisConnectionString2 %>" 
                SelectCommand="SELECT * FROM [textanalysis]"></asp:SqlDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetData" TypeName="RETableAdapters.textanalysisTableAdapter">
            </asp:ObjectDataSource>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
