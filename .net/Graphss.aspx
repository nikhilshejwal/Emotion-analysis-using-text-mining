<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Graphss.aspx.cs" Inherits="Graphss" %>

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
            style="position:absolute; top: 636px; left: 240px; height: 519px; width: 833px;">
             <asp:Chart ID="Chart1" runat="server" Width="380px" BackColor="MediumTurquoise" 
                 BackGradientStyle="TopBottom" BackHatchStyle="BackwardDiagonal">
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
                Width="380px" Height="255px" BackColor="255, 128, 0" 
                BackGradientStyle="LeftRight">
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
            
            <asp:Chart ID="Chart3" runat="server" BackColor="Teal" 
                BackGradientStyle="Center" BackHatchStyle="WideDownwardDiagonal" 
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
            <asp:Chart ID="Chart4" runat="server" BackColor="Fuchsia" 
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
            <asp:Chart ID="Chart5" runat="server" BackColor="Blue" 
                BackGradientStyle="LeftRight" 
                Width="344px">
                <Series>
                    <asp:Series Name="Series1" ChartType="StackedBar">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:Chart ID="Chart6" runat="server" BackColor="Red" 
                BackGradientStyle="LeftRight" 
                Width="344px">
                <Series>
                    <asp:Series Name="Series1" ChartType="StackedColumn100">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:Button ID="Button1" runat="server" Text="Button" 
                 style="position:absolute; top: 818px; left: 369px;" onclick="Button1_Click" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
