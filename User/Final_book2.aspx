<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Menu.master" AutoEventWireup="true" CodeFile="Final_book2.aspx.cs" Inherits="User_Final_book2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center" style="margin-top:110px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="Red">Sorry..... No Seat Available Select Another Bus</asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/User/Book_Seat.aspx">Back</asp:HyperLink>
    </div>
</asp:Content>

