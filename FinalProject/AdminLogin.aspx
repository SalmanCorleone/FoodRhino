<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="FinalProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style11
    {
        height: 21px;
    }
    .style12
    {
        width: 130px;
        color: #FEFFFF;
    }
    .style13
    {
        height: 21px;
        width: 130px;
        color: #FEFFFF;
    }
    .style14
    {
        color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
    <table style="width: 100%;">
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            Log In</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Username</td>
        <td class="style11">
            <asp:TextBox ID="nameBox" runat="server" ontextchanged="nameBox_TextChanged" 
                style="margin-left: 0px"></asp:TextBox>
        </td>
        <td class="style11">
        </td>
    </tr>
    <tr>
        <td class="style12">
            Password</td>
        <td>
            <asp:TextBox ID="passBOx" runat="server" ontextchanged="TextBox2_TextChanged" 
                style="height: 22px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td>
            <asp:Label ID="DebugLabel" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Main %>" 
                ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                SelectCommand="select * from &quot;USER&quot;"></asp:SqlDataSource>
        </td>
        <td>
            <asp:Button ID="LoginButton" runat="server" onclick="LoginButton_Click" 
                Text="Log In" Width="129px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
