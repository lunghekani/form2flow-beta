Public Class admin_group_add
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAddGroup_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-group-list.asxp")
    End Sub
End Class