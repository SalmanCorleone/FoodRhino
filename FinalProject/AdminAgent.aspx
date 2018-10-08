<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAgent.aspx.cs" Inherits="FinalProject.AdminAgent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
    <table style="width:100%;">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="agent_id" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" Height="237px" Width="310px" 
        AllowSorting="True" onselectedindexchanged="GridView1_SelectedIndexChanged">
    <RowStyle BackColor="#EFF3FB" />
    <Columns>
        <asp:BoundField DataField="agent_id" HeaderText="ID" ReadOnly="True" 
            SortExpression="agent_id" />
        <asp:BoundField DataField="first_name" HeaderText="First Name" 
            SortExpression="first_name" />
        <asp:BoundField DataField="last_name" HeaderText="Last Name" 
            SortExpression="last_name" />
        <asp:BoundField DataField="username" HeaderText="Username" 
            SortExpression="username" />
        <asp:BoundField DataField="password" HeaderText="Password" 
            SortExpression="password" />
        <asp:BoundField DataField="location_assigned_1" 
            HeaderText="Location1" SortExpression="location_assigned_1" />
        <asp:BoundField DataField="location_assigned_2" 
            HeaderText="Location2" SortExpression="location_assigned_2" />
        <asp:BoundField DataField="address" HeaderText="Address" 
            SortExpression="address" />
        <asp:BoundField DataField="contact_no" HeaderText="Contact" 
            SortExpression="contact_no" />
        <asp:BoundField DataField="join_date" HeaderText="Joining Date" 
            SortExpression="join_date" />
        <asp:BoundField DataField="salary_per_order" HeaderText="Salary Per order" 
            SortExpression="salary_per_order" />
        <asp:BoundField DataField="orders_completed" HeaderText="Orders Completed" 
            SortExpression="orders_completed" />
        <asp:CommandField ButtonType="Button" SelectText="Suspend" 
            ShowSelectButton="True" />
    </Columns>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <AlternatingRowStyle BackColor="White" />
</asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
<asp:Button ID="AddButton" runat="server" onclick="AddButton_Click" 
    Text="Agent Registration" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Main %>" 
    ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
    SelectCommand="select * from DELIVERY_AGENT"></asp:SqlDataSource>
</asp:Content>
