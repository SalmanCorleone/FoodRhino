<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="FinalProject.Menu" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style43
    {
        width: 169px;
    }
    .style45
    {
        height: 82px;
        text-align: center;
        background-color: #FFFF99;
        font-family: Exo;
    }
    .style47
    {}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 139px;">
    <tr>
        <td class="style45">
            <h3>
                Food Menu of
                <asp:Label ID="Hotel" runat="server"></asp:Label>
                <br />
            <asp:Label ID="Debug" runat="server" style="text-align: center"></asp:Label>
            </h3>
        </td>
    </tr>
    <tr>
        <td style="text-align: center" class="style47">
            <asp:GridView ID="FoodGrid" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" onselectedindexchanged="FoodGrid_SelectedIndexChanged" 
                Width="606px" Height="163px" style="font-family: Exo">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:CommandField ButtonType="Image" ShowSelectButton="True" 
                        SelectImageUrl="~/Images/AddtoCart.jpg" />
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:DropDownList ID="QuantityDrop" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem Value="2"></asp:ListItem>
                                <asp:ListItem Value="3"></asp:ListItem>
                                <asp:ListItem Value="4"></asp:ListItem>
                                <asp:ListItem Value="5"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style45">
            <asp:SqlDataSource ID="FoodDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Main %>" 
                ProviderName="<%$ ConnectionStrings:Main.ProviderName %>" 
                SelectCommand="Select * from Food"></asp:SqlDataSource>
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="44px" 
                ImageUrl="~/Images/RefreshButton.jpg" onclick="ImageButton1_Click" 
                Width="114px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ProceedButton" runat="server" Height="44px" 
                ImageUrl="~/Images/ProceedButton.jpg" onclick="ProceedButton_Click" 
                style="margin-bottom: 0px" Width="114px" />
        </td>
    </tr>
</table>
</asp:Content>
