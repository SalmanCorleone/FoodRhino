<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="FinalProject.Profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>User Profile</title>
    <style type="text/css">
        body 
        {
            background-image: url('Images/bg1.jpg');
            background-position: repeat-y;
            background-attachment: fixed;
        }

        .style1
        {
        }
        .style2
        {
            width: 575px;
            height: 39px;
        }
        .style3
        {
            height: 39px;
        }

        .style4
        {
            height: 39px;
            width: 172px;
        }
        .style5
        {
            width: 172px;
            text-align: center;
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style2">
                </td>
                <td class="style4">
                </td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:SqlDataSource ID="ProfileProtocol" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Main %>" 
                        ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                        SelectCommand="SELECT *from CUSTOMER"></asp:SqlDataSource>
                </td>
                <td class="style5">
                    <asp:Image ID="Image1" runat="server" Height="150px" 
                        ImageUrl="~/Images/User.jpg" Width="165px" style="text-align: center" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                    <asp:DetailsView ID="ProfileTable" runat="server" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" Height="70px" Width="174px" 
                        AutoGenerateRows="False" DataKeyNames="customer_id" 
                        DataSourceID="ProfileProtocol" style="text-align: left; font-family: Exo">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <RowStyle BackColor="#EFF3FB" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="first_name" HeaderText="First Name" 
                                SortExpression="first_name" />
                            <asp:BoundField DataField="last_name" HeaderText="Last name" 
                                SortExpression="last_name" />
                            <asp:BoundField DataField="username" HeaderText="Username" 
                                SortExpression="username" />
                            <asp:BoundField DataField="password" HeaderText="Password" 
                                SortExpression="password" />
                            <asp:BoundField DataField="address" HeaderText="Address" 
                                SortExpression="address" />
                            <asp:BoundField DataField="membership" HeaderText="Membership" 
                                SortExpression="membership" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="contact_no" HeaderText="Contact No" 
                                SortExpression="contact_no" />
                            <asp:BoundField DataField="reg_date" HeaderText="Registration Date" 
                                SortExpression="reg_date" />
                            <asp:BoundField DataField="birthday" HeaderText="Birthday" 
                                SortExpression="birthday" />
                        </Fields>
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
