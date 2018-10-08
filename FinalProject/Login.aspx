<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LogIn Page</title>
    <style type="text/css">
        .style1
        {            height: 15px;
        }
        .style7
        {
            text-align: center;
            height: 77px;
            color: #FFFFFF;
        }
        .style8
        {
            width: 116px;
            text-align: right;
            height: 60px;
        }
        .style9
        {
            width: 459px;
            height: 30px;
        }
        .style10
        {
            height: 30px;
            text-align: left;
        }
        .style13
        {
            width: 459px;
            height: 15px;
        }
        .style18
        {
            height: 80px;
            background-color: #99CCFF;
            text-align: center;
            font-family: Exo;
            font-weight: bold;
        }
        .style19
        {
            width: 459px;
            text-align: center;
            height: 60px;
        }
        .style20
        {
            color: #FFFFFF;
        }
        .style21
        {
            color: #FFFFFF;
            font-family: Exo;
        }
        .style22
        {
            color: #FFFFFF;
            font-family: Exo;
        }
        .style23
        {
            width: 459px;
            text-align: center;
            height: 38px;
        }
        .style24
        {
            width: 116px;
            text-align: right;
            height: 38px;
        }
        .style25
        {
            height: 38px;
        }
        .style26
        {
            width: 459px;
            text-align: center;
            height: 43px;
        }
        .style29
        {
            width: 459px;
            text-align: center;
            height: 51px;
        }
        .style30
        {
            width: 116px;
            text-align: right;
            height: 51px;
        }
        .style31
        {
            height: 51px;
        }
        .style32
        {
            width: 116px;
            text-align: right;
            height: 43px;
        }
        .style33
        {
            height: 43px;
        }
        .style34
        {
            height: 60px;
        }
        .style35
        {
            width: 116px;
            text-align: right;
            height: 28px;
        }
        .style36
        {
            height: 28px;
        }
        .style37
        {
            width: 459px;
            height: 28px;
        }
        .style38
        {
            font-family: Exo;
        }
        body 
          {
            background-image: url('Images/bg1.jpg');
            background-position: repeat-y;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table style="width:100%; background-image: url('Images/bg1.jpg'); height: 548px;">
        <tr>
            <td class="style18" colspan="3">
                Welcome to FoodRhino</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10" colspan="2">
                <b style="color: #003399; text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><b 
                    style="text-align: center;"><span class="style20">&nbsp;</span><span 
                    class="style21">&nbsp; Log In:</span></b></td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style1" colspan="2">
                </td>
        </tr>
        <tr>
            <td class="style29">
                </td>
            <td class="style30">
                <span class="style22">Username</span>:</td>
            <td class="style31">
                <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style26">
                </td>
            <td class="style32">
                <span class="style22">Password</span>:</td>
            <td class="style33">
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                </td>
            <td class="style8">
                </td>
            <td class="style34">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Log in" 
                    Width="107px" style="font-family: Exo; color: #0000FF" />
            </td>
        </tr>
        <tr>
            <td class="style37">
                </td>
            <td class="style35">
                </td>
            <td class="style36">
                </td>
        </tr>
        <tr>
            <td class="style7" colspan="3">
                <span class="style38">New user ?
                </span>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/SignUp.aspx" CssClass="style38" style="color: #FFCC00">Create Account Here</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td class="style23">
                <asp:SqlDataSource ID="UserProtocol" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Main %>" 
                    ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                    SelectCommand="SELECT * from &quot;USER&quot;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Main %>" 
        ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
        SelectCommand="SELECT * from CUSTOMER">
    </asp:SqlDataSource>
            </td>
            <td class="style24">
                </td>
            <td class="style25">
    
        <asp:Label ID="DebugLabel" runat="server" style="color: #FFFFFF; font-family: Exo"></asp:Label>
    
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
        </tr>
    </table>
    
        <br />
    
    </div>
    </form>
</body>
</html>
