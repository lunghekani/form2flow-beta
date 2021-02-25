Public Class admin_branch_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        bindGridView()
    End Sub

    Protected Sub bindGridView()
        Dim compId As Integer = Integer.Parse(Session("selected_comp_id"))
        Dim dt As DataTable = Instituition.getListOfBranchesPerInstitution(compId)


        'dt.Columns.AddRange(New DataColumn(2) {New DataColumn("#"), New DataColumn("Name"), New DataColumn("Description")})
        'dt.Rows.Add("1", "RED", "Reevel Enterprise Developments")
        'dt.Rows.Add("2", "GST", "Mining Manufacturer")
        'dt.Rows.Add("3", "GSS", "Agriculture")

        gvBranches.DataSource = dt
        gvBranches.DataBind()


    End Sub

    Protected Sub gvBranches_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvBranches_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim selectedId As Integer = e.CommandArgument
        If e.CommandName = "Edit" Then

            Dim locId As String = gvBranches.Rows(selectedId).Cells(1).Text
            Session("selected_loc_id") = locId
            Response.Redirect("admin-branch-info.aspx")

        End If
    End Sub

    Protected Sub gvBranches_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub
End Class