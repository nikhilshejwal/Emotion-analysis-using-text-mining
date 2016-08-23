<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FBCOMMENTS.aspx.cs" Inherits="FBCOMMENTS" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/WebUserControl.ascx" TagPrefix="wuc" TagName="w1" %>
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
                
                STYLE="position:absolute; top: 626px; left: 309px; height: 372px; width: 739px;">
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" 
                    BackColor="#CC00CC" style="color: #800000" Width="725px">
                    <LocalReport ReportPath="Report2.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Emotion analysisConnectionString3 %>" 
                    SelectCommand="SELECT * FROM [image_table]"></asp:SqlDataSource>
            </asp:Panel>
    </div>
    </form>
</body>
</html>
