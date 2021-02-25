Public Class facilitator_discussion_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            PopulateGV_Discussions()
        End If
    End Sub

    Private Sub PopulateGV_Discussions()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(5) {New DataColumn("Title"), New DataColumn("Course"),
                            New DataColumn("Module"), New DataColumn("Topic"), New DataColumn("Author"),
                            New DataColumn("Date Created")})

        dt.Rows.Add("Steps in SDLC", "Home Affairs", "Project Development", "SDLC", "Spencer James", "28/10/2020")
        dt.Rows.Add("Waterfall Methodology", "Home Affairs", "Project Development", "Waterfall", "Benny Gondwe", "20/10/2020")
        dt.Rows.Add("Agile Methodology", "Home Affairs", "Project Development", "Agile", "Nkosi Mahlangu", "05/10/2020")

        gvDiscussions.DataSource = dt
        gvDiscussions.DataBind()
    End Sub

    Protected Sub BtnReturn_Click(sender As Object, e As EventArgs)
        Response.Redirect("facilitator-dashboard.aspx")
    End Sub

    Protected Sub gvDiscussions_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvDiscussions_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        If e.CommandName = "View" Then
            Response.Redirect("facilitator-discussion-info.aspx")
        End If
    End Sub

    Protected Sub gvDiscussions_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub

End Class