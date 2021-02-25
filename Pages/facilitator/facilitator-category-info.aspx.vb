Public Class facilitator_category_info
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            txtCategoryName.Value = "Education"
        End If
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("facilitator-category-list.aspx")
    End Sub
End Class