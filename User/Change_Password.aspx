<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Menu.master" AutoEventWireup="true" CodeFile="Change_Password.aspx.cs" Inherits="User_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div align="center" style="margin-top:150px">
       <table style="border:3px solid blue" cellpadding="10px" cellspacing="10px" 
            bgcolor="#CCFFFF">
        <tr style="line-height:7px">
       <td colspan="2" align="center" bgcolor="#000099" 
                style="color: #FFFFFF; font-size: large; font-weight: bold;">Change Password</td></tr>
       <tr>
       <td align="left">College ID:</td>
       <td><asp:TextBox ID="txt_id" runat="server" Width="155px"></asp:TextBox></td>
       </tr>
       <tr>
       <td  align="left">Password:</td>
       <td ><asp:TextBox ID="txt_pass" runat="server" Width="155px" TextMode="Password"></asp:TextBox></td>
       </tr>
        <tr>
       <td align="left">New Password:</td>
       <td ><asp:TextBox ID="txt_confirm" runat="server" Width="155px" TextMode="Password"></asp:TextBox></td>
       </tr>
       <tr>
       <td colspan="2" align="right">
           <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#000099" 
               Font-Bold="True" ForeColor="White" onclick="Button1_Click" /></td>
       </tr>
       </table>
    </div>
      <br />
    <br />
    <div>
    <div align="center">
        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
    </div>
    </div>

</asp:Content>

