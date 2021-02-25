
Public Class main_company_list
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        bindGridView()
    End Sub

    Protected Sub bindGridView()
        Dim dt As DataTable = Instituition.getListOfCompanies

        'dt.Columns.AddRange(New DataColumn(2) {New DataColumn("#"), New DataColumn("Name"), New DataColumn("Description")})
        'dt.Rows.Add("1", "RED", "Reevel Enterprise Developments")
        'dt.Rows.Add("2", "GST", "Mining Manufacturer")
        'dt.Rows.Add("3", "GSS", "Agriculture")

        gvCompanies.DataSource = dt
        gvCompanies.DataBind()


    End Sub

    Protected Sub gvCompanies_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvCompanies_RowCommand(sender As Object, e As GridViewCommandEventArgs)

        Dim selectedId As Integer = e.CommandArgument

        If e.CommandName = "View" Then
            Dim instId As String = gvCompanies.Rows(selectedId).Cells(1).Text
            Session("selected_comp_id") = instId
            Response.Redirect("../admin/admin-branch-list.aspx")
        End If
    End Sub

    Protected Sub gvCompanies_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub
End Class