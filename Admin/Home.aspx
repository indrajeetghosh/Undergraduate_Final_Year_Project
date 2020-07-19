<%@ Page Title="" Language="C#" Debug="true"MasterPageFile="~/Admin/Admin_Menu.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center" style="margin-top:100px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Width="872px" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="college_id" HeaderText="college_id" 
                SortExpression="college_id" >
            </asp:BoundField>
            <asp:BoundField DataField="user_name" HeaderText="user_name" 
                SortExpression="user_name" >
            </asp:BoundField>
            <asp:BoundField DataField="user_type" HeaderText="user_type" 
                SortExpression="user_type" >
            </asp:BoundField>
            <asp:BoundField DataField="user_mob" HeaderText="user_mob" 
                SortExpression="user_mob" >
            </asp:BoundField>
            <asp:BoundField DataField="bus_id" HeaderText="bus_id" 
                SortExpression="bus_id" >
            </asp:BoundField>
            <asp:BoundField DataField="route_name" HeaderText="route_name" 
                SortExpression="route_name" >
            </asp:BoundField>
            <asp:BoundField DataField="driver_name" HeaderText="driver_name" 
                SortExpression="driver_name" />
            <asp:BoundField DataField="driver_mob" HeaderText="driver_mob" 
                SortExpression="driver_mob" />
            <asp:BoundField DataField="no_of_seat" HeaderText="no_of_seat" 
                SortExpression="no_of_seat" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btn_approve" runat="server" CommandName='<%# Eval("college_id") %>' onclick="btn_approve_Click1" 
                        Text="Approve" />
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


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            
            SelectCommand="SELECT [college_id], [user_name], [user_type], [user_mob], [bus_id], [route_name], [driver_name], [driver_mob], [no_of_seat] FROM [transaction_1] WHERE ([approve] = @approve)">
        <SelectParameters>
            <asp:Parameter DefaultValue="No" Name="approve" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</div>
</asp:Content>

