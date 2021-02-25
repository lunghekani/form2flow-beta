Public Class admin_course_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            bindGridView()
        End If
    End Sub

    Protected Sub bindGridView()
        'Dim dtdemo As New DataTable
        'dtdemo.Columns.AddRange(New DataColumn(3) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("Category"), New DataColumn("LastUpdatedOn")})
        'dtdemo.Rows.Add("1", "Fitter and Trainer", "Trade", "01/10/2020")
        'dtdemo.Rows.Add("2", "Home Affairs", "Accounting", "11/10/2020")
        'dtdemo.Rows.Add("3", "Simulator Training", "Maintenance", "15/10/2020")

        'gvCourses.DataSource = dtdemo
        'gvCourses.DataBind()

        Dim dt As DataTable = Courses.getAllCourses()
        gvCourses.DataSource = dt
        gvCourses.DataBind()

    End Sub
    Protected Sub gvCourses_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvCourses_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim selectedID As Integer = e.CommandArgument
        If e.CommandName = "Edit" Then
            Dim courseID As String = gvCourses.Rows(selectedID).Cells(1).Text
            Session("selectedCourseID") = courseID
            Response.Redirect("../admin/admin-edit-course.aspx")
        ElseIf e.CommandName = "View" Then
            Dim courseID As String = gvCourses.Rows(selectedID).Cells(1).Text
            Session("selectedCourseID") = courseID
            Response.Redirect("../admin/admin-course-single.aspx")
        End If
    End Sub

    Protected Sub gvCourses_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub
End Class