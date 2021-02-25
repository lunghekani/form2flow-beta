Public Class admin_user_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim companyId As Integer = Integer.Parse(Session("comp_id"))
            mockData()
            'bindGridView(companyId, 0)
        End If

    End Sub

    Protected Sub mockData()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(5) {New DataColumn("#"), New DataColumn("Name"), New DataColumn("Email"), New DataColumn("UserType"), New DataColumn("Registration"), New DataColumn("LastLogin")})
        dt.Rows.Add("1", "Chris Roos", "croos@gmail.com", "Admin", "10/10/2020", "20/10/2020")
        dt.Rows.Add("2", "Marinus Loots", "mloots@gmail.com", "Learner", "14/10/2020", "21/10/2020")
        dt.Rows.Add("3", "Dave Reevell", "dave@gmail.com", "Facilitator", "13/10/2020", "19/10/2020")

        gvUsers.DataSource = dt
        gvUsers.DataBind()


    End Sub

#Region "Navigational Buttons"

    Protected Sub btnAllUsers_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnAdmin_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnAssessor_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnFacilitator_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnMentor_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnModerator_ServerClick(sender As Object, e As EventArgs)

    End Sub


#End Region

#Region "GridView"

    Protected Sub bindGridView(ByVal companyId As Integer, ByVal permissionId As Integer)

        Dim dt As DataTable = UserDetails.getUsersPerInstitutions(companyId, permissionId)
        gvUsers.DataSource = dt
        gvUsers.DataBind()

    End Sub

    Protected Sub gvUsers_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvUsers_RowCommand(sender As Object, e As GridViewCommandEventArgs)

        Dim selectedID As Integer = e.CommandArgument


        If e.CommandName = "View" Then
            Dim userId As String = gvUsers.Rows(selectedID).Cells(1).Text
            Session("user_id") = userId
            Response.Redirect("admin-user-info.aspx")

        End If

        'Dim companyId As Integer = Session("comp_id")
        'mockData()
        'bindGridView(companyId, 0)
    End Sub

    Protected Sub gvUsers_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub

    Protected Sub btnView_Click(sender As Object, e As EventArgs)

        'Dim dt As New DataTable
        'If Session("search") = True Then
        '    dt = Session("dt_searched_customer_list")
        'Else
        '    dt = Session("dt_customer_list")
        'End If

        ' Get the selected Row's index to extract the userId
        'Dim selectedIndex As Integer = gvUsers.SelectedRow.DataItemIndex
        'Dim userId As String = gvUsers.Rows(selectedIndex).Cells(1).Text
        'Session("user_id") = userId
        'Response.Redirect("admin-user-info.aspx")

    End Sub

#End Region

End Class