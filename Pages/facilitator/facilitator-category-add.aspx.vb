Public Class facilitator_category_add
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("facilitator-category-list.aspx")
    End Sub

    Protected Sub btnAddCategory_Click(sender As Object, e As EventArgs)

    End Sub
End Class