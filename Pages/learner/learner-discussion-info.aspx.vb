Public Class learner_discussion_info
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            PopulatePage()
        End If
    End Sub

    Private Sub PopulatePage()
        lblHeader.InnerText = "Steps in SDLC"
        txtTitle.Value = "Steps in SDLC"
        txtAuthor.Value = "Spencer James"
        txtDiscModule.Value = "Project Development"
        txtDiscCourse.Value = "Home Affairs"
        txtDiscussion.Value = "1) Requirement Gathering and Analysis. 2) Design. 3) Implementation or Coding." &
                                "4) Testing. 5) Deployment. 6) Maintenance."

    End Sub

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("learner-discussion-list.aspx")
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs)

    End Sub
End Class