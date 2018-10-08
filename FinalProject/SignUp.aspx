<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Sign Up</title>
    <style type="text/css">
        
       body 
        {
            background-image: url('Images/bg1.jpg');
            background-position: repeat-y;
            background-attachment: fixed;
        }
        .style1
        {
            width: 562px;
            text-align: left;
        }
        .style2
        {
            width: 562px;
            height: 23px;
            text-align: right;
        }
        .style3
        {
            height: 23px;
        }
        .style4
        {
            width: 562px;
            text-align: right;
        }
        .style5
        {
            width: 562px;
            text-align: right;
            height: 26px;
            color: #FFFFFF;
            font-family: Exo;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            width: 562px;
            text-align: left;
            height: 23px;
        }
        .style8
        {
            height: 23px;
            }
        .style9
        {
            width: 169px;
            text-align: left;
        }
        .style10
        {
            height: 26px;
            width: 169px;
        }
        .style11
        {
            width: 562px;
            height: 56px;
            text-align: right;
            color: #FFFFFF;
            font-family: Exo;
        }
        .style12
        {
            height: 56px;
            width: 169px;
        }
        .style13
        {
            height: 56px;
        }
        .style14
        {
            width: 562px;
            text-align: left;
            height: 101px;
        }
        .style15
        {
            height: 101px;
            width: 169px;
        }
        .style16
        {
            height: 101px;
        }
        .style17
        {
            height: 23px;
            width: 169px;
        }
        .style18
        {
            text-align: center;
            height: 65px;
            background-color: #6699FF;
            font-family: Exo;
            font-weight: bold;
        }
        .style21
        {
            width: 562px;
            text-align: left;
            height: 62px;
        }
        .style22
        {
            height: 62px;
            width: 169px;
            text-align: left;
            font-weight: 700;
            font-family: Exo;
            color: #FFFFFF;
        }
        .style23
        {
            height: 62px;
        }
        .style24
        {
            width: 562px;
            height: 23px;
            text-align: right;
            color: #FFFFFF;
            font-family: Exo;
        }
        .style25
        {
            width: 562px;
            text-align: right;
            color: #FFFFFF;
            font-family: Exo;
        }
        .style26
        {
            width: 169px;
            text-align: left;
            height: 26px;
        }

        .style27
        {
            font-family: Exo;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%; height: 208px; ">
            <tr>
                <td class="style18" colspan="3">
                    Welcome To FoodRhino</td>
            </tr>
            <tr>
                <td class="style21">
                    </td>
                <td class="style22">
                    Create Your Account</td>
                <td class="style23">
                    </td>
            </tr>
            <tr>
                <td class="style14">
                    </td>
                <td class="style15">
                    <asp:Image ID="Image1" runat="server" Height="115px" 
                        ImageUrl="~/Images/User.jpg" Width="126px" />
                    </td>
                <td class="style16">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    First Name:</td>
                <td class="style26">
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style25">
                    Last Name:</td>
                <td class="style9">
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Username</td>
                <td class="style10">
                    <asp:TextBox ID="UsernameTextBox" runat="server" 
                        ontextchanged="UsernameTextBox_TextChanged"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style25">
                    Password</td>
                <td class="style9">
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style25">
                    Re-enter Password</td>
                <td class="style9">
                    <asp:TextBox ID="Password2TextBox" runat="server" TextMode="Password" 
                        ontextchanged="Password2TextBox_TextChanged"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style17">
                    </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style11">
                    Location</td>
                <td class="style12">
                    <asp:DropDownList ID="LocationBox" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="region" DataValueField="location_id" Height="38px" 
                        Width="127px" style="font-family: Exo; font-weight: 700">
                    </asp:DropDownList>
                </td>
                <td class="style13">
                    </td>
            </tr>
            <tr>
                <td class="style24">
                    Address</td>
                <td class="style17">
                    <asp:TextBox ID="AddressBox" runat="server"></asp:TextBox>
                    </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    Membership</td>
                <td class="style8" colspan="2">
                    <asp:RadioButtonList ID="Member" runat="server" 
                        style="font-family: Exo; font-weight: 700; color: #FFFFFF">
                        <asp:ListItem>Standard</asp:ListItem>
                        <asp:ListItem>Premium</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    Email</td>
                <td class="style10">
                    <asp:TextBox ID="EmailBox" runat="server" style="height: 22px"></asp:TextBox>
                    </td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style24">
                    Contact Number</td>
                <td class="style17">
                    <asp:TextBox ID="ContactBox" runat="server"></asp:TextBox>
                    </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    Birthday (day- month- year)</td>
                <td class="style17">
                    <asp:TextBox ID="date" runat="server" Width="41px" 
                        style="font-weight: 700; font-family: Exo"></asp:TextBox>
                    &nbsp;-
                    <asp:DropDownList ID="month" runat="server" 
                        style="font-weight: 700; font-family: Exo">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
&nbsp;-
                    <asp:DropDownList ID="year" runat="server" 
                        style="font-weight: 700; font-family: Exo">
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style9">
                    <asp:Button ID="SignUpButton" runat="server" 
                        onclick="SignUpButton_Click" Text="Create" Width="132px" 
                        style="color: #0000FF; font-family: Impact;" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Main %>" 
            onselecting="SqlDataSource2_Selecting" 
            ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
            SelectCommand="select * from LOCATION"></asp:SqlDataSource>
                    </td>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Main %>" 
            ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
            SelectCommand="select * from CUSTOMER"></asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:Label ID="DebugLabel" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Debug2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    <p class="style27" style="text-align: center">
        Already have an account?
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Log In Here</asp:HyperLink>
    </p>
    </form>
</body>
</html>
