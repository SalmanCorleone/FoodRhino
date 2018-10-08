<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminCustomer.aspx.cs" Inherits="FinalProject.AdminCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="customer_id" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None">
    <RowStyle BackColor="#E3EAEB" />
    <Columns>
        <asp:BoundField DataField="customer_id" HeaderText="customer_id" 
            ReadOnly="True" SortExpression="customer_id" />
        <asp:BoundField DataField="first_name" HeaderText="first_name" 
            SortExpression="first_name" />
        <asp:BoundField DataField="last_name" HeaderText="last_name" 
            SortExpression="last_name" />
        <asp:BoundField DataField="username" HeaderText="username" 
            SortExpression="username" />
        <asp:BoundField DataField="password" HeaderText="password" 
            SortExpression="password" />
        <asp:BoundField DataField="location_id" HeaderText="location_id" 
            SortExpression="location_id" />
        <asp:BoundField DataField="address" HeaderText="address" 
            SortExpression="address" />
        <asp:BoundField DataField="membership" HeaderText="membership" 
            SortExpression="membership" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
            SortExpression="contact_no" />
        <asp:BoundField DataField="reg_date" HeaderText="reg_date" 
            SortExpression="reg_date" />
        <asp:BoundField DataField="birthday" HeaderText="birthday" 
            SortExpression="birthday" />
    </Columns>
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#7C6F57" />
    <AlternatingRowStyle BackColor="White" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Main %>" 
    ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
    SelectCommand="Select * from CUSTOMER"></asp:SqlDataSource>
</asp:Content>

