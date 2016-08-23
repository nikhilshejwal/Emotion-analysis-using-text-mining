<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl2.ascx.cs" Inherits="WebUserControl2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Industrial Company</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<div id="main_block">
  <div id="innerblock">
    <!--Top Panel starts here -->
     <div id="top_panel"> <a href="index.html" class="logo">
        <asp:Label ID="heading" runat="server" Text="Emotion Analysis Using Text Mining" 
            
            style="position:absolute; top: 10px; left: 282px; height: 49px; width: 777px;" 
            Font-Bold="True" Font-Size="35pt" ForeColor="White"></asp:Label> 
        <asp:Label ID="head12" runat="server" Text=" " 
            style="position:absolute; top: 56px; left: 439px; width: 512px; height: 42px;" 
            Font-Bold="True" Font-Size="35pt" ForeColor="White">Social Networks</asp:Label></a>
      <div class="menu"> <a href="Textmining.aspx">Home</a>  <a href="Facebook/welcompage.aspx">Facebook</a> <a href="Twitter/Home.aspx">Twitter</a> </div>
      <img src="img/processing-emotions.png" width="393" alt="" 
            
             style="clear:left; float:left; margin:-40px 0 0 55px; position:relative; top: 43px; left: 0px; height: 285px;" /> 
        <img src="img/eFactorWheel-basic.jpg" width="499" alt="" 
            style="float:left; height: 293px;" /> </div>
    <!--Top Panel ends here -->
    <!--content Panel starts here -->
    <img src="images/cp_top.jpg" width="892" height="15" alt="" style="float:left; margin-left:54px;" />
    <div id="contentpanel">
      <!--Left Panel starts here -->
      <!--Left Panel ends here -->
      <!--Right Panel starts here -->
      <!--Right Panel ends here -->
    </div>
    <img src="images/cp_btm.jpg" width="892" height="10" alt="" style="clear:left; float:left; margin-left:54px;" />
    <!--content Panel ends here -->
    <!--footer panel starts here -->
    <div id="ft_padd"> 
      
       </div>
    <br />
    <!--footer panel ends here -->
  </div>
  <!--innerblock ends here -->
</div>
<!--mainblock ends here -->
</body>
</html>


