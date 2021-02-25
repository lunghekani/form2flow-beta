Public Class facilitator_student_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            bindGridView()
        End If
    End Sub

    Protected Sub bindGridView()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(4) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("Email"), New DataColumn("Registration"), New DataColumn("LastLogin")})
        dt.Rows.Add("1", "Chris Roos", "croos@gmail.com", "01/10/2020", "25/10/2020")
        dt.Rows.Add("2", "Marinus Loots", "mloots@gmail.com", "11/10/2020", "27/10/2020")
        dt.Rows.Add("3", "Dean Reevell", "dean@red.co.za", "15/10/2020", "01/11/2020")

        gvStudents.DataSource = dt
        gvStudents.DataBind()
    End Sub
    Protected Sub gvStudents_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvStudents_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim selectedID As Integer = e.CommandArgument

        If e.CommandName = "View" Then

            Response.Redirect("facilitator-student-info.aspx")
        End If
    End Sub

    Protected Sub gvStudents_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub
End Class