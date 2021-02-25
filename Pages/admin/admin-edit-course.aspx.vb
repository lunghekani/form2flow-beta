Public Class admin_edit_course
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fillCourseDetails()
    End Sub
    Protected Sub btnUpdateCourse_Click(sender As Object, e As EventArgs)
        Dim adminID As String = Session("user_id")

    End Sub
    Protected Sub fillCourseDetails()
        Dim courseID As Integer = Session("selectedCourseID")
        Dim dt As DataTable = Courses.getCourseSingle(courseID)
        Dim status As String
        txtCourseName.Value = dt.Rows(0).Item("Name").ToString
        txtDescr.Value = dt.Rows(0).Item("CourseDescription").ToString
        txtDuration.Value = dt.Rows(0).Item("CourseTimeLimit").ToString

        status = dt.Rows(0).Item("Disabled").ToString
        If status = 1 Then
            rdbStatus.Checked = True
        Else
            rdbStatus.Checked = False
        End If

        ddlNQFLevel.ClearSelection()
        ddlCategory.ClearSelection() ' still need category tbh theres nothing that supports it in my datamodel
        ddlCertficate.ClearSelection()

        'ddlCategory.Items.FindByValue(dt.Rows(0).Item("Category").ToString).Selected = True
        'ddlCertficate.Items.FindByValue(dt.Rows(0).Item("Certificate").ToString).Selected = True
        ddlNQFLevel.Items.FindByValue(dt.Rows(0).Item("NQFLevel").ToString).Selected = True

    End Sub
End Class