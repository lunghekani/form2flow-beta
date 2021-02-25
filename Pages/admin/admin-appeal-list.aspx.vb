Public Class admin_appeal_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            bindGridView()
        End If
    End Sub

    Protected Sub bindGridView()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(5) {New DataColumn("ID"), New DataColumn("Appeal"), New DataColumn("Description"), New DataColumn("Course"),
                            New DataColumn("SubmittedOn"), New DataColumn("LastUpdatedOn")})
        dt.Rows.Add("1", "Unfair marking", "The assessor marks me unfairly because I support Manchester United", "Web Development with ASP.NET", "05/09/2020", "11/10/2020")
        dt.Rows.Add("2", "course content missing", "The content for so and so course is missing", "Home Affairs", "05/09/2020", "11/10/2020")
        dt.Rows.Add("3", "Broken Equipment", "The VR is broken", "Simulator Training", "05/09/2020", "11/10/2020")

        gvAppeals.DataSource = dt
        gvAppeals.DataBind()
    End Sub
    Protected Sub BtnReturn_Click(sender As Object, e As EventArgs)
        Response.Redirect("admin-appeal-list.aspx")
    End Sub

    Protected Sub gvAppeals_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvAppeals_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim selectedID As Integer = e.CommandArgument


        If e.CommandName = "Edit" Then

            Response.Redirect("admin-appeal-info.aspx")

        End If
    End Sub

    Protected Sub gvAppeals_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub
End Class