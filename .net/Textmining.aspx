<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Textmining.aspx.cs" Inherits="Textmining" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/WebUserControl.ascx" TagPrefix="wuc" TagName="w1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 36%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <wuc:w1 ID="d1" runat="server" />
    
    <div>

     <table class="style1" 
            style="position:absolute; top: 541px; left: 344px; height: 224px;" 
            bgcolor="#FFCC00">
     <tr>
             <td>
                 <asp:Label ID="Label5" runat="server" Text="ID:" Font-Bold="True" 
                     ForeColor="#CC00CC"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="TextBox5" runat="server" BorderColor="#33CCCC"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label1" runat="server" Text="Attribute" Font-Bold="True" 
                     ForeColor="#CC00CC"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server" BorderColor="#33CCCC"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label2" runat="server" Text="Subject" Font-Bold="True" 
                     ForeColor="#CC00CC"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="TextBox2" runat="server" BorderColor="#33CCCC"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label3" runat="server" Text="Emotional " Font-Bold="True" 
                     ForeColor="#CC00CC"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="TextBox3" runat="server" BorderColor="#33CCCC"></asp:TextBox>
             </td>
         </tr>
         <%--<tr>
             <td>
                 <asp:Label ID="Label4" runat="server" Text="Statement"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="TextBox4" runat="server" BorderColor="#33CCCC"></asp:TextBox>
             </td>
         </tr>--%>
        <%-- <tr>
             <td>
                 <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="TextBox5" runat="server" BorderColor="#33CCCC"></asp:TextBox>
             </td>
         </tr>--%>
         <tr>
             <td>
                 <asp:Label ID="Label6" runat="server" Text="File Image" Font-Bold="True" 
                     ForeColor="#CC00CC"></asp:Label>
             </td>
             <td>
                 <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#33CCCC" />
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
                     ImageUrl="~/img/uplo.png" Width="99px" onclick="ImageButton1_Click1" />
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
         </tr>
     </table>
   <%-- <table style="position:absolute; top: 711px; left: 393px; width: 482px; height: 166px;" 
    bgcolor="Gray"><tr>--%>
    <%--<td class="style2">
        <asp:TextBox ID="txtmsg" runat="server" Height="93px" Width="461px" 
            BorderColor="Gray" BorderStyle="Solid" BorderWidth="6px"></asp:TextBox>
    </td></tr><tr><td class="style3">
        <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="244px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image3" runat="server" Height="28px" 
            ImageUrl="~/Facebook/image/Animated_Arrow_Red.gif" Width="52px" />
&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="34px" 
            ImageUrl="~/Facebook/image/post.png" onclick="ImageButton1_Click" 
            style="margin-left: 0px" Width="88px" />
        </td></tr><tr><td class="style4"></td></tr></table>--%>
    </div>
    </form>
</body>
</html>
