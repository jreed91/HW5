<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="Header">
            <h1>Wicked Easy Recipes</h1>
            <p>Using 5 Ingredients or Less!</p>
        </div>
        <div class="nav">
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="NewRecipe.aspx">New Recipe</a></li>
                <li><a href="About.aspx">About Us</a></li>
                <li><a href="ContactUs.aspx">Contact</a></li>
            </ul>
        </div>
        <div class="content">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Recipe_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Recipe_ID" HeaderText="Recipe_ID" ReadOnly="True" SortExpression="Recipe_ID" Visible="False" />
                    <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe_Name" SortExpression="Recipe_Name" />
                    <asp:BoundField DataField="Submitted_By" HeaderText="Submitted_By" SortExpression="Submitted_By" />
                    <asp:HyperLinkField DataNavigateUrlFields="Recipe_ID" DataNavigateUrlFormatString="Recipe.aspx?ID={0}" HeaderText="View Recipe" Text="View Details" />
                    
                </Columns>
            </asp:GridView>1
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Recipe_ID], [Recipe_Name], [Submitted By] AS Submitted_By FROM [Recipes]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
