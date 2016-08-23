<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Keywor.aspx.cs" Inherits="Keywor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
            
            
            style="position:absolute; top: 541px; left: 365px; height: 439px; width: 643px;">
             <asp:Panel ID="Panel2" runat="server" onMouseover="this.bgColor='#FFFF6F',this.fontcolor='black';"               
              
                 style="position:absolute; top: 50px; left: 1px; width: 662px; height: 325px; text-align: center;">
            
                 <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            
        </asp:Panel>
      <center >

        <asp:Label ID="lblDataRank" runat="server"  Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="lblinput" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="lblExec" runat="server" Text="Label" Visible="False"></asp:Label>
        
        
        <asp:Label ID="lblsescom" runat="server" Text="Label" Visible="False"></asp:Label>

         
    <br />
    <asp:Label ID="lblRatingStatus" runat="server" Text=""></asp:Label>
              <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
 
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

            <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" 
                
                 Visible="False" ></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label" Visible=false></asp:Label><asp:Label ID="Label5"
                runat="server" Text="Label" Visible=false></asp:Label>
                </center>
        </asp:Panel>
       
    </div>
    </form>
</body>
</html>
