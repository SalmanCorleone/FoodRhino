<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgentConfirm.aspx.cs" Inherits="FinalProject.AgentConfirm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Transaction Confirmation</title>
        <style type="text/css">
            body 
          {
            background-image: url('Images/Agent.jpg');
            background-position: repeat-y;
            background-attachment: fixed;
        }
            .style1
            {
                width: 468px;
            }
            .style2
            {
                width: 255px;
            }
            .style3
            {
                font-family: Exo;
                color: #FFFFFF;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 155px">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Main %>" 
            ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
            SelectCommand="Select * from TRANSACTION"></asp:SqlDataSource>
    
    </div>
    <div>
        <table style="width: 100%; height: 135px;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" style="text-align: left; color: #FFFFFF">
                    E<span class="style3">nter Confirmation Code:</span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:TextBox ID="CodeBox" runat="server" Height="24px" Width="207px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" style="color: #FFFFFF"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Button ID="confirmButton" runat="server" onclick="confirmButton_Click" 
                        style="color: #0000FF; font-weight: 700; margin-bottom: 0px" Text="Confirm" 
                        Width="89px" />
                &nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" 
                        Width="74px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
