<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Completed.aspx.cs" Inherits="FinalProject.Completed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style45
    {
        font-family: Exo;
    }
    .style46
    {
        color: #0000CC;
    }
    .style47
    {
        height: 113px;
    }
    .style48
    {
        color: #0000FF;
        font-family: Exo;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" 
    style="width: 100%; height: 291px; background-color: #FFFF99">
    <tr>
        <td colspan="3" style="text-align: center">
            <h3 class="style45">
                <asp:Label ID="TopLabel" runat="server"></asp:Label>
            </h3>
        </td>
    </tr>
    <tr>
        <td class="style47">
        </td>
        <td class="style47">
        </td>
        <td class="style47">
        </td>
    </tr>
    <tr>
        <td class="style48" colspan="3" style="text-align: center; font-family: Exo">
            <asp:Label ID="BotLabel" runat="server"></asp:Label>
&nbsp;<asp:Label ID="ConfirmationCode" runat="server" style="font-family: 'Market Deco'"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
