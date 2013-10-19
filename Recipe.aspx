<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

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
            <asp:DetailsView ID="DetailsView1" runat="server" Width="400px" BackColor="White" AutoGenerateRows="False" DataKeyNames="Recipe_ID" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="Recipe_ID" HeaderText="Recipe_ID" ReadOnly="True" SortExpression="Recipe_ID" InsertVisible="False" Visible="False" />
                    <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name" >
                    <HeaderStyle ForeColor="DimGray" />
                    <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Submitted_By" HeaderText="Submitted By" SortExpression="Submitted_By" >
                    <HeaderStyle ForeColor="DimGray" />
                    <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient 1" SortExpression="Ingredient_1" >
                    <HeaderStyle ForeColor="DimGray" />
                        <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient 2" SortExpression="Ingredient_2" >
                    <HeaderStyle ForeColor="DimGray" />
                        <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient 3" SortExpression="Ingredient_3" >
                    <HeaderStyle ForeColor="DimGray" />
                        <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient 4" SortExpression="Ingredient_4" >
                    <HeaderStyle ForeColor="DimGray" />
                        <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient 5" SortExpression="Ingredient_5" >
                    <HeaderStyle ForeColor="DimGray" />
                        <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" >
                    <HeaderStyle ForeColor="DimGray" />
                        <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" >
                    <HeaderStyle ForeColor="DimGray" />
                        <ItemStyle ForeColor="LightCoral" />
                    </asp:BoundField>
                    <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="button" ShowDeleteButton="True" >
<ControlStyle CssClass="button"></ControlStyle>
                    </asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Recipes] WHERE [Recipe_ID] = @Recipe_ID" InsertCommand="INSERT INTO [Recipes] ([Recipe_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Notes)" SelectCommand="SELECT [Recipe_ID], [Recipe_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes] FROM [Recipes] WHERE ([Recipe_ID] = @Recipe_ID)" UpdateCommand="UPDATE [Recipes] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Recipe_ID] = @Recipe_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Recipe_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Recipe_Name" Type="String" />
                    <asp:Parameter Name="Submitted_By" Type="String" />
                    <asp:Parameter Name="Ingredient_1" Type="String" />
                    <asp:Parameter Name="Ingredient_2" Type="String" />
                    <asp:Parameter Name="Ingredient_3" Type="String" />
                    <asp:Parameter Name="Ingredient_4" Type="String" />
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
                    <asp:Parameter Name="Ingredient_4" Type="String" />
                    <asp:Parameter Name="Ingredient_5" Type="String" />
                    <asp:Parameter Name="Preparation" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="Recipe_ID" Type="Int32" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="Recipe_ID" QueryStringField="ID" DefaultValue="" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
