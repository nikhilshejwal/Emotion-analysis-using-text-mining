<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/WebUserControl.ascx" TagPrefix="wuc" TagName="w1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style type="text/css">
        .Star
        {
            background-image: url(img/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(img/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(img/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
         .style1
         {
             width: 100%;
             height: 320px;
         }
         .style2
         {
             width: 193px;
         }
         .style3
         {
             width: 100%;
         }
         .style4
         {
             height: 32px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <wuc:w1 ID="d1" runat="server" />
    <div>
     <table style="position:absolute; top: 556px; left: 320px; height: 42px; width: 637px;" 
            bgcolor="#CC99FF">
              <tr>
                  <td class="h40">
                      <asp:Label ID="Label1" runat="server" Text="Search Your Favorite " 
            
            
            Font-Bold="False" Font-Italic="False" Font-Names="Lucida Bright" 
            Font-Size="Medium" ForeColor="Red" style="font-weight: 700"></asp:Label>&nbsp;</td>
                  <td class="h40">
                      <asp:TextBox ID="txtSearch" runat="server" Height="26px" Width="334px" 
                          style="text-align: center" class="txtb" BorderColor="#660066" ></asp:TextBox>&nbsp;</td>
                  <td class="h40">
                      <asp:Button ID="Button1" runat="server"
           
            onmouseover="this.value='Search'" onmouseout="this.value='Click Here!'"  onclick="Button1_Click" 
                Text="Search" BackColor="Blue" Font-Bold="True" Font-Names="Imprint MT Shadow" 
                ForeColor="White" Height="32px" Width="91px" />&nbsp;</td>
              </tr>
              </table>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible=false></asp:Label>
                <center>
                    <asp:GridView ID="GridView1" runat="server" 
                        style="position:absolute; top: 636px; left: 470px;" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                         <asp:BoundField DataField="id" HeaderText="ID" 
                    SortExpression="ID" />
              
                         <asp:TemplateField HeaderText="Image">
                         <ItemTemplate>
                          <%# Eval("attribute")%>
                          <br />
                          <img  alt="image" src='<%# Eval("photo")%>'   height='50' width='50'/>
                          <br />
                          <%# Eval("comment")%>
                          </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Accepted">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnlinkAccepted" runat="server" 
                            onclick="btnlinkAccepted_Click" Font-Bold="True" 
                            Font-Names="Imprint MT Shadow" Font-Size="Medium">Accepted</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
        
                         
        
                        </Columns>

                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />

                    </asp:GridView>
                </center>
               
        <asp:Label ID="Label3" runat="server" Text="Number Of Achronyms" 
            style="position:absolute; top: 629px; left: 761px;"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"  
            style="position:absolute; top: 751px; left: 929px;" BorderColor="#CC00CC"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"  
            style="position:absolute; top: 682px; left: 923px;" BorderColor="#CC00CC"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Rating Effective Words" 
            style="position:absolute; top: 759px; left: 764px;"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"  
            style="position:absolute; top: 625px; left: 922px;" BorderColor="#CC00CC"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Number Effective Words" 
            style="position:absolute; top: 684px; left: 744px;"></asp:Label>
        
        <asp:Button ID="Button2" runat="server" Text="Button" 
            style="position:absolute; top: 1092px; left: 799px;" 
            onclick="Button2_Click" />
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
         <%--<asp:GridView ID="GridView2" runat="server" 
            style="position:absolute; overflow:scroll; top: 846px; left: 756px; width: 255px; font-weight: 700; text-align: center;" 
            AutoGenerateColumns="False" CellPadding="4" 
            GridLines="None" onrowdatabound="GridView1_RowDataBound" 
            ForeColor="#333333">
      
            <AlternatingRowStyle BackColor="#FF33CC" />
      
            <Columns>
              <asp:BoundField DataField="id" HeaderText="Id" Visible="false" 
                    SortExpression="id" />

                      <asp:TemplateField HeaderText="Attribute">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click"><%# Eval("attribute")%></asp:LinkButton>
                
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Rating">
                <ItemTemplate>
                 
                  <asp:Rating ID="Rating1" AutoPostBack="true" OnChanged="OnRatingChanged" runat="server" 
        StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
        FilledStarCssClass="FilledStar"> 
    </asp:Rating>
             
                
                </ItemTemplate>
                </asp:TemplateField>


            </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />

<SortedAscendingCellStyle BackColor="#F4F4FD"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#5A4C9D"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D8D8F0"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#3E3277"></SortedDescendingHeaderStyle>
        </asp:GridView>--%>
    </div>
    </form>
</body>
</html>
