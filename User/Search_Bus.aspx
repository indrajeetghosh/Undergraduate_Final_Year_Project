<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/User/User_Menu.master" AutoEventWireup="true" CodeFile="Search_Bus.aspx.cs" Inherits="User_Search_Bus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center" style="margin-top:100px">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        RepeatDirection="Horizontal" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
        <asp:ListItem>Search By Bus ID</asp:ListItem>
        <asp:ListItem>Search By Route Name</asp:ListItem>
    </asp:RadioButtonList>
</div>
<div align="center" style="margin-top:30px" runat="server" id="Search_by_Bus_id" >
    <asp:TextBox ID="TextBox1" placeholder="Enter Bus ID" runat="server"></asp:TextBox>
    <asp:Button ID="btn_search" runat="server" Text="Search" onclick="btn_search_Click" />
</div>
<div align="center" style="margin-top:30px" runat="server" id="Search_By_Route" >
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        AutoPostBack="True" Width="155px">
    </asp:DropDownList>
</div>
<div align="center" style="margin-top:30px" >
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
</div>
        <div align="center" style="margin-top:30px">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Width="817px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Book Seat">
                        <ItemTemplate>
                            <asp:Button ID="Button_Book" runat="server" onclick="Button_Book_Click" 
                                Text="Book" CommandName='<%# Eval("bus_id") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
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

