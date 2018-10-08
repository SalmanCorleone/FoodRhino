<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="FinalProject.Order1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style45
    {
        width: 84px;
    }
    .style46
    {
        width: 372px;
        border-bottom-color: #FFFF99;
        background-color: #CCFF99;
    }
    .style47
    {
        width: 84px;
        text-align: center;
        background-color: #CCFF99;
    }
    .style48
    {
        width: 372px;
        border-bottom-color: #FFFF99;
        background-color: #99FFCC;
        text-align: center;
    }
    .style49
    {
        text-align: center;
        background-color: #CCFF99;
    }
        .style50
        {
            font-family: Exo;
            color: #FFFFFF;
            border-bottom-color: #FFFF99;
            background-color: #CCFF99;
        }
    .style51
    {
        font-family: Exo;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 356px;">
    <tr>
        <td class="style45">
            &nbsp;</td>
        <td class="style46">
            <h3 class="style42" 
                style="text-align: center; background-color: #00CCFF; width: 420px;">
                Here&#39;s Your Order List:</h3>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style45">
            &nbsp;</td>
        <td class="style46">
            <asp:Label ID="DebugLabel" runat="server" style="color: #000000"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style45">
            &nbsp;</td>
        <td class="style50">
    <asp:GridView ID="CartGrid" runat="server" CellPadding="4" ForeColor="#333333" 
    GridLines="None" Height="166px" style="text-align: center" Width="426px">
    <RowStyle BackColor="#EFF3FB" />
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
        <td class="style47">
            &nbsp;</td>
        <td class="style48">
            <asp:Label ID="Total" runat="server" style="font-family: Exo; font-weight: 700"></asp:Label>
            <span class="style51">&nbsp;</span><b><asp:Label ID="Price" runat="server" 
                CssClass="style42"></asp:Label>
            </b></td>
        <td class="style49">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style47">
            <asp:Button ID="CancelButton" runat="server" onclick="CancelButton_Click" 
                Text="Clear" />
        </td>
        <td class="style48">
            <asp:SqlDataSource ID="TransProtocol" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Main %>" 
                ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                SelectCommand="select * from TRANSACTION"></asp:SqlDataSource>
        </td>
        <td class="style49">
            <asp:Button ID="ConfirmButton" runat="server" onclick="ProceedButton_Click" 
                Text="Confirm" />
        </td>
    </tr>
</table>
</asp:Content>
