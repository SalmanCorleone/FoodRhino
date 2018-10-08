<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AgentReg.aspx.cs" Inherits="FinalProject.AgentReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            height: 79px;
        }
        .style12
        {
            font-family: Exo;
        }
        .style13
        {
            font-family: Exo;
            color: #FFFFFF;
            width: 151px;
        }
        .style14
        {
            color: #FFFFFF;
            width: 151px;
        }
        .style15
        {
            height: 79px;
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
    <table style="width:100%;">
    <tr>
        <td class="style15">
            <asp:SqlDataSource ID="AgentProtocol" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Main %>" 
                ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                SelectCommand="select * from DELIVERY_AGENT"></asp:SqlDataSource>
            <asp:SqlDataSource ID="LocationProtocol" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Main %>" 
                ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                SelectCommand="Select * from LOCATION"></asp:SqlDataSource>
        </td>
        <td class="style11">
            <asp:Label ID="DebugLabel" runat="server"></asp:Label>
        </td>
        <td class="style11">
            </td>
    </tr>
    <tr>
        <td class="style13">
            First Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="style12" Width="128px"></asp:TextBox>
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Last name</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Username</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Password</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Re-enter Password</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Location</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="LocationProtocol" DataTextField="region" 
                DataValueField="location_id">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="LocationProtocol" DataTextField="region" 
                DataValueField="location_id">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Address</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Contact No</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Joining Date</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Salary per order</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td>
            <asp:Button ID="SignButton" runat="server" onclick="SignButton_Click" 
                Text="Sign Up" Width="102px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
