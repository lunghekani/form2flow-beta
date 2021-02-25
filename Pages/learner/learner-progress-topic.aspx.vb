Public Class learner_progress_topic
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnReturn_Click(sender As Object, e As EventArgs)
        Response.Redirect("learner-progress-modules.aspx")
    End Sub

End Class