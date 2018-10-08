<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgentLogin.aspx.cs" Inherits="FinalProject.AgentLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Agent Login</title>
    <style type="text/css">
            body 
          {
            background-image: url('Images/Agent.jpg');
            background-position: repeat-y;
            background-attachment: fixed;
        }
        .style1
        {
            width: 192px;
            font-weight: 700;
            font-family: Exo;
            color: #0000FF;
        }
        .style4
        {
            width: 571px;
        }
        .style5
        {
            height: 36px;
            width: 571px;
            text-align: right;
            font-family: Exo;
            color: #66FFCC;
        }
        .style6
        {
            height: 58px;
            width: 571px;
            text-align: right;
            font-family: Exo;
            color: #66FFFF;
        }
        .style7
        {
            width: 192px;
            height: 58px;
        }
        .style8
        {
            height: 58px;
        }
        .style9
        {
            height: 38px;
            width: 571px;
            text-align: right;
            font-family: Exo;
            color: #66FFFF;
        }
        .style10
        {
            width: 192px;
            height: 38px;
        }
        .style11
        {
            height: 38px;
        }
        .style12
        {
            width: 192px;
            height: 36px;
        }
        .style13
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Main %>" 
            ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
            SelectCommand="select * from &quot;USER&quot;"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <table style="width: 100%; height: 173px;">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    Log In</td>
                <td>
                    <asp:Label ID="DebugLabel" runat="server" 
                        style="font-family: Exo; color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Username</td>
                <td class="style12">
                    <asp:TextBox ID="nameBox" runat="server"></asp:TextBox>
                </td>
                <td class="style13">
                </td>
            </tr>
            <tr>
                <td class="style9">
                    password</td>
                <td class="style10">
                    <asp:TextBox ID="passBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Button ID="LogButton" runat="server" onclick="LogButton_Click" 
                        style="font-weight: 700" Text="Log In" />
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
