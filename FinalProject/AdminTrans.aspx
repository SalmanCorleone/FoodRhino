<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminTrans.aspx.cs" Inherits="FinalProject.AdminUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Main %>" 
    ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
    SelectCommand="Select * from TRANSACTION"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" Width="660px" AllowSorting="True">
    <RowStyle BackColor="#EFF3FB" />
    <Columns>
        <asp:BoundField DataField="trans_id" HeaderText="ID" 
            SortExpression="trans_id" />
        <asp:BoundField DataField="customer_id" HeaderText="Customer ID" 
            SortExpression="customer_id" />
        <asp:BoundField DataField="customer_address" HeaderText="Address" 
            SortExpression="customer_address" />
        <asp:BoundField DataField="order_string" HeaderText="Order" 
            SortExpression="order_string" />
        <asp:BoundField DataField="agent_id" HeaderText="Agent ID" 
            SortExpression="agent_id" />
        <asp:BoundField DataField="total_price" HeaderText="Net Price" 
            SortExpression="total_price" />
        <asp:BoundField DataField="pin_code" HeaderText="PIN" 
            SortExpression="pin_code" />
        <asp:BoundField DataField="delivery_status" HeaderText="Status" 
            SortExpression="delivery_status" />
    </Columns>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <AlternatingRowStyle BackColor="White" />
</asp:GridView>
</asp:Content>

