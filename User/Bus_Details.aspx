<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Menu.master" AutoEventWireup="true" CodeFile="Bus_Details.aspx.cs" Inherits="User_Bus_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-top:100px" align="center" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="bus_id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Width="894px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="bus_id" HeaderText="bus_id" ReadOnly="True" 
                SortExpression="bus_id" />
            <asp:BoundField DataField="route_name" HeaderText="route_name" 
                SortExpression="route_name" />
            <asp:BoundField DataField="start_point" HeaderText="start_point" 
                SortExpression="start_point" />
            <asp:BoundField DataField="end_point" HeaderText="end_point" 
                SortExpression="end_point" />
            <asp:BoundField DataField="driver_id" HeaderText="driver_id" 
                SortExpression="driver_id" />
            <asp:BoundField DataField="driver_name" HeaderText="driver_name" 
                SortExpression="driver_name" />
            <asp:BoundField DataField="driver_mobile" HeaderText="driver_mobile" 
                SortExpression="driver_mobile" />
            <asp:BoundField DataField="total_seats" HeaderText="total_seats" 
                SortExpression="total_seats" />
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
        
        SelectCommand="SELECT [bus_id], [route_name], [start_point], [end_point], [driver_id], [driver_name], [driver_mobile], [total_seats] FROM [Bus_Info]"></asp:SqlDataSource>
</div>
</asp:Content>

