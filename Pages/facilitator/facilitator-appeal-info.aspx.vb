Public Class facilitator_appeal_info
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            txtName.Value = "Marinus Loots"
            txtID.Value = "10345235"
            txtCourse.Value = "Web Development with ASP.NET"
            txtModule.Value = "Session Management"
            txtAssessorName.Value = "Prof. K Njenga"
            txtCategory.Value = "Web Development"
            txtAppealStatus.Value = "Unresolved"
            txtAppealStage.Value = "2"
            txtLearnerAppealDescr.Value = "The assessor marks me unfairly because I support Manchester United"
            txtAssessorAppealDescr.Value = "That is untrue"
            txtStepsTakenAssessor.Value = "Compared the marks to other learners"
            txtStepsTakenManagement.Value = "Confirmed the learner is being marked appropriately."
            stepsTakenExecutive.Value = "Satisfied with the steps take, closing the appeal."


        End If
    End Sub

    Protected Sub BtnBack_Click(sender As Object, e As EventArgs)
        Response.Redirect("facilitator-appeal-list.aspx")
    End Sub

End Class