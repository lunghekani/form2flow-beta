Public Class facilitator_progress_info
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnReturn_Click(sender As Object, e As EventArgs)
        Response.Redirect("facilitator-dashboard.aspx")
    End Sub

End Class