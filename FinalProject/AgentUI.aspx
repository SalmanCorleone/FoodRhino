<%@ Page Title="" Language="C#" MasterPageFile="~/AgentMaster.Master" AutoEventWireup="true" CodeBehind="AgentUI.aspx.cs" Inherits="FinalProject.AgentUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="3" Height="220px" 
    Width="804px" AutoGenerateColumns="False" 
    DataKeyNames="trans_id" DataSourceID="TransProtocol" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
    style="font-family: Exo; text-align: center;">
    <RowStyle ForeColor="#000066" />
    <Columns>
        <asp:BoundField DataField="trans_id" HeaderText="trans_id" ReadOnly="True" 
            SortExpression="trans_id" Visible="False" />
        <asp:BoundField DataField="order_string" HeaderText="Order" 
            SortExpression="order_string" />
        <asp:BoundField DataField="total_price" HeaderText="Price" 
            SortExpression="total_price" />
        <asp:BoundField DataField="delivery_status" HeaderText="Status" 
            SortExpression="delivery_status" />
        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
</asp:GridView>
<asp:SqlDataSource ID="TransProtocol" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Main %>" 
    ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
    SelectCommand="Select * from TRANSACTION"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>
