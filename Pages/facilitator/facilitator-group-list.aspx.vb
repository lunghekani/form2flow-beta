Public Class facilitator_group_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            bindGridView()
        End If
    End Sub

    Protected Sub bindGridView()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(2) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("Description")})
        dt.Rows.Add("1", "Fitter and Trainer Group", "This group is about so and so for so and so course")
        dt.Rows.Add("2", "Home Affairs", "This group is about so and so for so and so course")
        dt.Rows.Add("3", "Simulator Training", "This group is about so and so for so and so course")

        gvGroups.DataSource = dt
        gvGroups.DataBind()
    End Sub
    Protected Sub gvGroups_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvGroups_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim selectedID As Integer = e.CommandArgument


        If e.CommandName = "Edit" Then

            Response.Redirect("facilitator-group-info.aspx")

        End If
    End Sub

    Protected Sub gvGroups_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub
End Class