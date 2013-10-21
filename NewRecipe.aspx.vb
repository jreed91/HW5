Partial Class NewRecipe
    Inherits System.Web.UI.Page

    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        SqlDataSource1.Insert()
        Response.Redirect("~/Default.aspx")
    End Sub
End Class
