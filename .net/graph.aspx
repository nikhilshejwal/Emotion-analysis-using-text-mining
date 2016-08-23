<%@ Page Language="C#" AutoEventWireup="true" CodeFile="graph.aspx.cs" Inherits="graph" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
        <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 636px; left: 301px; height: 836px; width: 799px;">
            <asp:Chart ID="Chart1" runat="server" Width="380px" BackColor="MediumTurquoise">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Name="Series2">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:Chart ID="Chart2" runat="server" 
                Width="380px" BackColor="Purple" BackGradientStyle="LeftRight">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Name="Series2">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            
            <asp:Chart ID="Chart3" runat="server" BackColor="Yellow" 
                BackGradientStyle="Center" BackHatchStyle="DashedDownwardDiagonal" 
                Height="305px" Width="337px">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:Chart ID="Chart4" runat="server" BackColor="0, 192, 192" 
                BackGradientStyle="LeftRight" BackHatchStyle="BackwardDiagonal" 
                Width="344px">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
