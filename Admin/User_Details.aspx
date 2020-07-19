<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Menu.master" AutoEventWireup="true" CodeFile="User_Details.aspx.cs" Inherits="Admin_User_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="margin-top:100px" align="center">
    <asp:RadioButtonList ID="rbluser" runat="server" Font-Bold="True" 
        Font-Size="Large" RepeatDirection="Horizontal" 
        onselectedindexchanged="rbluser_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem>Student</asp:ListItem>
        <asp:ListItem>Faculty</asp:ListItem>
    </asp:RadioButtonList>
</div>
<div style="margin-top:30px" align="center">
    <asp:Label ID="lbl_msg" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="Red"></asp:Label>
</div>
<div style="margin-top:30px" align="center" id="Search_By" runat="server" visible="false">
    <asp:TextBox ID="TextBox1" type="text" placeholder="Search By College Id" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
</div>
<div style="margin-top:20px" align="center">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="797px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</div>
</asp:Content>

