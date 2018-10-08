<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminSuspend.aspx.cs" Inherits="FinalProject.AdminSuspend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style10
    {
        font-family: Exo;
    }
    .style12
    {
        height: 22px;
    }
    .style14
    {
        width: 148px;
    }
    .style17
    {
        width: 119px;
    }
        .style18
        {
            font-family: Exo;
            width: 152px;
            color: #FFFFFF;
        }
        .style19
        {
            color: #FFFFFF;
        }
        .style20
        {
            width: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
    <table style="width: 39%; height: 168px; background-image: url('Images/bg1.jpg'); border-width:2px; border-color:White;">
    <tr>
        <td class="style19" >
            <h3 class="style19">
                &nbsp;</h3>
        </td>
        <td >
            <h3 class="style18">
                Are You Sure ??</h3>
        </td>
        <td class="style20" >
            <h3>
                &nbsp;</h3>
        </td>
    </tr>
    <tr>
        <td class="style12" colspan="3">
            <h3>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Main %>" 
                    ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                    SelectCommand="select * from DELIVERY_AGENT"></asp:SqlDataSource>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </h3>
        </td>
    </tr>
    <tr>
        <td class="style17">
            <h3>
                &nbsp;</h3>
        </td>
        <td class="style14">
            <h3>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Confirm" />
&nbsp;&nbsp;
                <asp:Button ID="Back" runat="server" onclick="Back_Click" Text="Back" 
                    Width="57px" />
            </h3>
        </td>
        <td class="style20">
            <h3>
                &nbsp;</h3>
        </td>
    </tr>
</table>
</asp:Content>
