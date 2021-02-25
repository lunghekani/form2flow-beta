Imports System.Xml

Public Class admin_category_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        bindGridView()
    End Sub

    Protected Sub bindGridView()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})
        dt.Rows.Add("1", "Finance")
        dt.Rows.Add("2", "Computer Science")
        dt.Rows.Add("3", "Data Science")

        gvCategories.DataSource = dt
        gvCategories.DataBind()


    End Sub

    Protected Sub gvCategories_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvCategories_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim selectedID As Integer = e.CommandArgument

        If e.CommandName = "Edit" Then

            Response.Redirect("admin-category-info.aspx")
        ElseIf e.CommandName = "Delete" Then
            'To do 
            'Delete
            Response.Redirect(Request.RawUrl)
        End If
    End Sub

    Protected Sub gvCategories_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub
End Class