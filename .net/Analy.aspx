<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Analy.aspx.cs" Inherits="Analy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/WebUserControl.ascx" TagPrefix="wuc" TagName="w1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <wuc:w1 ID="d1" runat="server" />
    <asp:GridView ID="GridView2" runat="server" 
            style="position:absolute; top: 613px; left: 331px; width: 281px;" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
          CellPadding="4" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID"  />
                <asp:BoundField DataField="attribute" HeaderText="Attribute" />
                <asp:BoundField DataField="subject" HeaderText="Subject" />
                <asp:BoundField DataField="comment" HeaderText="Emotional" />
                <asp:BoundField DataField="RepeatedL" HeaderText="Repeated Letters" />
                <asp:BoundField DataField="NEmotion" HeaderText="Number Emotion" />
                <asp:BoundField DataField="NPun" HeaderText="Number  Punctuation" />
                <asp:BoundField DataField="NAcro" HeaderText="Number Acronyms" />
                <asp:BoundField DataField="NEW" HeaderText="Number Effective Words" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle ForeColor="#003399" HorizontalAlign="Left" BackColor="#99CCCC" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
   
    <div>
    </div>
    </form>
</body>
</html>
