<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/User/User_Menu.master" AutoEventWireup="true" CodeFile="Book_Seat.aspx.cs" Inherits="User_Book_Seat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div align="center" style="margin-top:100px">
<table style="border:3px solid blue; line-height:7px" cellpadding="10px" cellspacing="10px" 
        bgcolor="#CCFFFF">
         <tr>
    <td colspan="2"  bgcolor="#000066" 
             style="color: #FFFFFF; font-weight: bold; font-size: large;" align="center">Seat Booking Form</td>
    </tr>
<tr>
<td align="left">College ID:</td>
<td>
    <asp:Label ID="lbl_id" runat="server" Text=""></asp:Label></td>
</tr>
<tr>
<td align="left">User Name:</td>
<td><asp:Label ID="lbl_name" runat="server" Text=""></asp:Label></td>
</tr>
<tr>
<td align="left">User Type:</td>
<td>
    <asp:Label ID="lbl_type" runat="server" Text=""></asp:Label></td>
    </tr>
<tr>
<td align="left">User Mobile:</td>
<td><asp:Label ID="lbl_mob" runat="server" Text=""></asp:Label></td>
</tr>
<tr>
<td align="left">User Gender:</td>
<td><asp:Label ID="lbl_gender" runat="server" Text=""></asp:Label></td>
</tr>
<tr>
<td align="left">User Address:</td>
<td><asp:Label ID="lbl_add" runat="server" Text=""></asp:Label></td>
</tr>
<tr>
    <td align="left">Bus Id:</td>
    <td> 
       <asp:TextBox ID="txt_busID" runat="server" Width="155px" Enabled="False"></asp:TextBox>
    </td>
    </tr>
<tr>
<td align="left">Route Name:</td>
<td><asp:TextBox ID="txt_RouteName" runat="server" Width="155px" Enabled="False"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Driver Name:</td>
<td><asp:TextBox ID="txt_DriverName" runat="server" Width="155px" Enabled="False"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Driver Mobile :</td>
<td><asp:TextBox ID="txt_DriverMobile" runat="server" Width="155px" Enabled="False"></asp:TextBox></td>
</tr>
<tr>
<td align="left">No. of Seat :</td>
<td><asp:TextBox ID="txt_seat" runat="server" Width="155px" Enabled="False"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Total Seat :</td>
    <td><asp:TextBox ID="txt_tot_seat" runat="server" Width="155px" Enabled="False"></asp:TextBox></td>
   
</tr>

<tr style="line-height:7px">
<td align="center" colspan="2" style="color:Red; font-family:Auctoritas; font-weight:bold">Upload Your Pic Here</td>
</tr>
<tr style="line-height:7px">
<td align="center" colspan="2"><asp:FileUpload ID="FileUpload1" runat="server"/></td>
</tr>
<tr>
<td align="right" colspan="2">
    <asp:Button ID="book_now" runat="server" Text="Book Now" 
        BackColor="#000099" ForeColor="White" onclick="book_now_Click"/></td>
</tr>
</table>
</div>
</asp:Content>

