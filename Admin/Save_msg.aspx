<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Menu.master" AutoEventWireup="true" CodeFile="Save_msg.aspx.cs" Inherits="Admin_Save_msg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:100px" align="center">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#00CC00"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
        Font-Size="Large" NavigateUrl="~/Admin/Entry_Bus.aspx">Back</asp:HyperLink>
</div>
</asp:Content>

