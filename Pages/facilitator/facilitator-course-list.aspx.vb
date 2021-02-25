Public Class facilitator_course_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            bindGridView()
        End If
    End Sub

    Protected Sub bindGridView()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("Category"), New DataColumn("LastUpdatedOn")})
        dt.Rows.Add("1", "Fitter and Trainer", "Trade", "01/10/2020")
        dt.Rows.Add("2", "Home Affairs", "Accounting", "11/10/2020")
        dt.Rows.Add("3", "Simulator Training", "Maintenance", "15/10/2020")

        gvCourses.DataSource = dt
        gvCourses.DataBind()
    End Sub
    Protected Sub gvCourses_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvCourses_RowCommand(sender As Object, e As GridViewCommandEventArgs)

    End Sub

    Protected Sub gvCourses_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub

End Class