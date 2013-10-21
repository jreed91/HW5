<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            <div class="formContent">
                <div class="form">
                    <label>Your Email Address</label><asp:TextBox ID="tbYourEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must fill out all fields" ControlToValidate="tbYourEmail"></asp:RequiredFieldValidator>
                    <br />
                    <label>Your Message </label>&nbsp;<asp:TextBox ID="tbMessage" runat="server" Height="55px" TextMode="MultiLine" Width="229px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbMessage" ErrorMessage="You Must fill out all fields"></asp:RequiredFieldValidator><br />
                    
                </div>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="btnSend" />
    </div>

    </form>
</body>
</html>