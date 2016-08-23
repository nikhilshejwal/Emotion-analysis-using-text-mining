<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OverAll Analysis.aspx.cs" Inherits="OverAll_Analysis" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/WebUserControl.ascx" TagPrefix="wuc" TagName="w1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
           <wuc:w1 ID="d1" runat="server" />
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        <asp:Panel ID="Panel1" runat="server" 
            style="position:absolute; top: 636px; left: 303px; height: 584px; width: 761px;">
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="751px">
                <LocalReport ReportPath="Report3.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="SqlDataSource2" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Emotion analysisConnectionString4 %>" 
                SelectCommand="SELECT * FROM [registerationtable]"></asp:SqlDataSource>
          <%--  <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
