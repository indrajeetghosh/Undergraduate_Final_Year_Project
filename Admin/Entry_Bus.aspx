<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/Admin/Admin_Menu.master" AutoEventWireup="true" CodeFile="Entry_Bus.aspx.cs" Inherits="Admin_Entry_Bus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />

    
<div align="center" style="margin-top:50px">
<table style="border:3px solid blue" cellpadding="10px" cellspacing="10px" 
        bgcolor="#CCFFFF">
        <tr style="line-height:7px" bgcolor="#000099"><td colspan="2" align="center" style="color:white">
           Bus Entry Form</td></tr>
<tr>
<td align="left">Bus ID:</td>
<td><asp:TextBox ID="txt_bus_id" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Route Name:</td>
<td><asp:TextBox ID="txt_route_name" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Start Point:</td>
<td><asp:TextBox ID="txt_start_p" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">End Point:</td>
<td><asp:TextBox ID="txt_End_p" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Driver ID:</td>
<td><asp:TextBox ID="txt_driver_id" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Driver Name:</td>
<td><asp:TextBox ID="txt_driver_name" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Driver Address :</td>
<td><asp:TextBox ID="txt_driver_add" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Driver Mobile:</td>
<td><asp:TextBox ID="txt_driver_mob" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="left">Total No. of Seats:</td>
<td><asp:TextBox ID="txt_no_seats" runat="server" Width="155px"></asp:TextBox></td>
</tr>
<tr>
<td align="right" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Submit Details" 
        BackColor="#000099" ForeColor="White" onclick="Button1_Click" /></td>
</tr>
</table>
</div>
</asp:Content>

