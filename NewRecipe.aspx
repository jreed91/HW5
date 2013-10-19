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
            <div class="newrecipecontent">
                <div class="form">
                    <label>Recipe Name</label><asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RFV_tbName" runat="server" ErrorMessage="This Field is Required" ControlToValidate="tbName"></asp:RequiredFieldValidator>
                    <br />
                    <label>Submitted By</label><asp:TextBox ID="tbSubmittedBy" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="tbSubmittedBy"></asp:RequiredFieldValidator>
                    <br />
                    <label>Ingredient 1</label><asp:TextBox ID="tbIng1" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="tbIng1"></asp:RequiredFieldValidator>
                    <br />
                    <label>Ingredient 2</label><asp:TextBox ID="tbIng2" runat="server"></asp:TextBox>
                    <br />
                    <label>Ingredient 3</label><asp:TextBox ID="tbIng3" runat="server"></asp:TextBox>
                    <br />
                    <label>Ingredient 4</label><asp:TextBox ID="tbIng4" runat="server"></asp:TextBox>
                    <br />
                    <label>Ingredient 5</label><asp:TextBox ID="tbIng5" runat="server"></asp:TextBox>
                    <br />
                    <label>Preparation</label><asp:TextBox ID="tbPrep" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="tbIng1"></asp:RequiredFieldValidator>
                    <br />
                    <label>Notes</label><asp:TextBox ID="tbNotes" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnInsert" runat="server" Text="Save"/>
                   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO [Recipes] ([Recipe_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Notes)" SelectCommand="SELECT [Recipe_ID], [Recipe_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes] FROM [Recipes] WHERE (([Recipe_Name] = @Recipe_Name) AND ([Submitted_By] = @Submitted_By) AND ([Ingredient_1] = @Ingredient_1) AND ([Ingredient_2] = @Ingredient_2) AND ([Ingredient_3] = @Ingredient_3) AND ([Ingredient_4] = @Ingredient_4) AND ([Ingredient_5] = @Ingredient_5) AND ([Preparation] = @Preparation) AND ([Notes] = @Notes))" >
                        <InsertParameters>
                            <asp:FormParameter Name="Recipe_Name" FormField="tbName" />
                            <asp:FormParameter Name="Submitted_By" FormField="tbSubmittedBy"  />
                            <asp:FormParameter Name="Ingredient_1" FormField="tbIng1" />
                            <asp:FormParameter Name="Ingredient_2" FormField="tbIng2" />
                            <asp:FormParameter Name="Ingredient_3" FormField="tbIng3" />
                            <asp:FormParameter Name="Ingredient_4" FormField="tbIng4"/>
                            <asp:FormParameter Name="Ingredient_5" FormField="tbIng5" />
                            <asp:FormParameter Name="Preparation" FormField="tbPrep" />
                            <asp:FormParameter Name="Notes" FormField="tbNotes"  />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="tbName" Name="Recipe_Name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbSubmittedBy" Name="Submitted_By" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbIng1" Name="Ingredient_1" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbIng2" Name="Ingredient_2" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbIng3" Name="Ingredient_3" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbIng4" Name="Ingredient_4" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbIng5" Name="Ingredient_5" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbPrep" Name="Preparation" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbNotes" Name="Notes" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

    </form>
</body>
</html>
