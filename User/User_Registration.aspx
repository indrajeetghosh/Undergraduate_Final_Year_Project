<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="User_Registration.aspx.cs" Inherits="User_User_Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <br />
    <h3>Welcome User</h3>
    <h4 style="color: #008000">If you are already registered. Please 
        <asp:HyperLink ID="hyp_login" runat="server" NavigateUrl="~/User/Default.aspx">Login</asp:HyperLink></h4>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/Default.aspx" Font-Bold="True" Font-Size="Large">Back</asp:HyperLink>
    </div>

<br />
<br />
<div align="center" >

<table style="border:3px solid blue; line-height:7px" cellpadding="10px" cellspacing="10px" 
        bgcolor="#CCFFFF">
         <tr>
    <td colspan="2"  bgcolor="#000066" 
             style="color: #FFFFFF; font-weight: bold; font-size: large;" align="center">Registration Form</td>
    </tr>
<tr>
<td align="left">College ID:</td>
<td><asp:TextBox ID="txt_id" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">User Name:</td>
<td><asp:TextBox ID="txt_name" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">User Type:</td>
<td>
    <asp:RadioButtonList ID="rbl_type" runat="server" RepeatDirection="Horizontal" 
        Width="155px">
        <asp:ListItem Value="Student"></asp:ListItem>
        <asp:ListItem Value="Faculty"></asp:ListItem>
    </asp:RadioButtonList>
</td>
</tr>
<tr>
    <td align="left">Gender</td>
    <td> 
        <asp:RadioButtonList ID="Rbl2" runat="server" RepeatDirection="Horizontal" 
            Width="160px">
            <asp:ListItem Value="Male"></asp:ListItem>
            <asp:ListItem Value="Female"></asp:ListItem>
        </asp:RadioButtonList>
    </td>
    </tr>
<tr>
<td align="left">User Address:</td>
<td><asp:TextBox ID="txt_add" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">User Mobile:</td>
<td><asp:TextBox ID="txt_mob" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Password:</td>
<td><asp:TextBox ID="txt_pass" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Retype Password :</td>
<td><asp:TextBox ID="txt_retype" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr style="line-height:7px">
<td align="center" colspan="2">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="Red"></asp:Label></td>
</tr>
<tr>
<td align="right" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Register" 
        BackColor="#000099" ForeColor="White" onclick="Button1_Click"/></td>
</tr>
</table>
</div>
    </form>
</body>
</html>


