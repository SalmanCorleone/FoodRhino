<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="CustomerHome.aspx.cs" Inherits="FinalProject.CustomerHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style47
        {
            width: 266px;
        }
        .style48
        {
            height: 56px;
            font-weight: bold;
            font-family: Exo;
        }
        .style49
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style48" colspan="4" 
                style="text-align: center; background-color: #FFFF99">
                Select A Hotel to Order Food</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="HotelTable" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="hotel_id" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    Height="158px" onselectedindexchanged="HotelTable_SelectedIndexChanged" 
                    style="text-align: center; font-family: Exo" Width="402px">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:BoundField DataField="hotel_id" HeaderText="hotel_id" ReadOnly="True" 
                            SortExpression="hotel_id" Visible="False" />
                        <asp:BoundField DataField="hotel_name" HeaderText="Hotel" 
                            SortExpression="hotel_name" />
                        <asp:BoundField DataField="address" HeaderText="Address" 
                            SortExpression="address" />
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style49">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Main %>" 
                    onselecting="SqlDataSource1_Selecting" 
                    ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                    SelectCommand="select * from HOTEL"></asp:SqlDataSource>
            </td>
            <td class="style47" colspan="2">
                <asp:Label ID="Debug" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
