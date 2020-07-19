<%@ Page Title="" Language="C#" Debug="true"MasterPageFile="~/User/User_Menu.master" AutoEventWireup="true" CodeFile="Final_Book.aspx.cs" Inherits="User_Final_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
function Popup() 
{
            var prtContent = document.getElementById('<%=divlist.ClientID%>');
            prtContent.border = 0;
            var Print = window.open('', '', 'left=20,top=100,width=1000,height=1000,toolbar=0,scrollbars=1,status=0,resizable=1');
            Print.document.write(prtContent.outerHTML);
            Print.document.close();
            Print.focus();

            Print.print();
            Print.close();
 
        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="divlist" style="margin-top:100px" align="center" runat="server"  >
<div align="center" style="margin-bottom:30px">
    <asp:Label ID="Label1" runat="server" ></asp:Label>
</div>

    <asp:Table ID="Table1" runat="server" CellPadding="6" CellSpacing="8" 
        BorderColor="#003366" Width="291px" BackImageUrl="~/img/bac.jpg" BorderStyle="Groove">
    </asp:Table>
    <asp:Table ID="Table2" runat="server" BorderStyle="Groove" BorderColor="#003366" Width="291px" BackImageUrl="~/img/bac.jpg">
    </asp:Table>

</div>
<div style="width: 100%; text-align:center; margin-top:30px">
<img src="../img/print.png" height="30" width="30" onclick="Popup()"/><br />
Print
</div>
</asp:Content>
