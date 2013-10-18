<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                <div class="form">
                    <label>Recipe Name</label><asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                    <label>Submitted By</label><asp:TextBox ID="tbSubmittedBy" runat="server"></asp:TextBox>
                    <label>Ingredient 1</label><asp:TextBox ID="tbIng1" runat="server"></asp:TextBox>
                    <label>Ingredient 2</label><asp:TextBox ID="tbIng2" runat="server"></asp:TextBox>
                    <label>Ingredient 3</label><asp:TextBox ID="tbIng3" runat="server"></asp:TextBox>
                    <label>Ingredient 4</label><asp:TextBox ID="tbIng4" runat="server"></asp:TextBox>
                    <label>Ingredient 5</label><asp:TextBox ID="tbIng5" runat="server"></asp:TextBox>
                    <label>Preparation</label><asp:TextBox ID="tbPrep" runat="server"></asp:TextBox>
                    <label>Notes</label><asp:TextBox ID="tbNotes" runat="server"></asp:TextBox>
                    <asp:Button ID="btnInsert" runat="server" Text="Save" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Recipes] WHERE [Recipe_ID] = @Recipe_ID" InsertCommand="INSERT INTO [Recipes] ([Recipe_ID], [Recipe_Name], [Submitted By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_5], [Preparation], [Notes]) VALUES (@Recipe_ID, @Recipe_Name, @Submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_5, @Preparation, @Notes)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Recipes]" UpdateCommand="UPDATE [Recipes] SET [Recipe_Name] = @Recipe_Name, [Submitted By] = @Submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Recipe_ID] = @Recipe_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Recipe_ID" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Recipe_ID" Type="Decimal" />
                            <asp:Parameter Name="Recipe_Name" Type="String" />
                            <asp:Parameter Name="Submitted_By" Type="String" />
                            <asp:Parameter Name="Ingredient_1" Type="String" />
                            <asp:Parameter Name="Ingredient_2" Type="String" />
                            <asp:Parameter Name="Ingredient_3" Type="String" />
                            <asp:Parameter Name="Ingredient_5" Type="String" />
                            <asp:Parameter Name="Preparation" Type="String" />
                            <asp:Parameter Name="Notes" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Recipe_Name" Type="String" />
                            <asp:Parameter Name="Submitted_By" Type="String" />
                            <asp:Parameter Name="Ingredient_1" Type="String" />
                            <asp:Parameter Name="Ingredient_2" Type="String" />
                            <asp:Parameter Name="Ingredient_3" Type="String" />
                            <asp:Parameter Name="Ingredient_5" Type="String" />
                            <asp:Parameter Name="Preparation" Type="String" />
                            <asp:Parameter Name="Notes" Type="String" />
                            <asp:Parameter Name="Recipe_ID" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

    </form>
</body>
</html>
