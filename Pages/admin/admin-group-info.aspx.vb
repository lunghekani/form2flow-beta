Public Class admin_group_info
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            mvGroup.SetActiveView(viewGroupInfo)
            mockData()
        End If
    End Sub

    Protected Sub mockData()

        txtGroupName.Value = "Fitter and Trainer Group"
        txtGroupKey.Value = Guid.NewGuid.ToString
        txtDescription.Value = "This group is about so and so for so and so course"

        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(5) {New DataColumn("#"), New DataColumn("Name"), New DataColumn("Email"), New DataColumn("UserType"), New DataColumn("Registration"), New DataColumn("LastLogin")})
        dt.Rows.Add("1", "Chris Roos", "croos@gmail.com", "Admin", "10/10/2020", "20/10/2020")
        dt.Rows.Add("2", "Marinus Loots", "mloots@gmail.com", "Learner", "14/10/2020", "21/10/2020")
        dt.Rows.Add("3", "Dave Reevell", "dave@gmail.com", "Facilitator", "13/10/2020", "19/10/2020")

        gvUsers.DataSource = dt
        gvUsers.DataBind()

        Dim dt2 As New DataTable
        dt2.Columns.AddRange(New DataColumn(3) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("Category"), New DataColumn("LastUpdatedOn")})
        dt2.Rows.Add("1", "Fitter and Trainer", "Trade", "01/10/2020")
        dt2.Rows.Add("2", "Home Affairs", "Accounting", "11/10/2020")
        dt2.Rows.Add("3", "Simulator Training", "Maintenance", "15/10/2020")

        gvCourses.DataSource = dt2
        gvCourses.DataBind()

    End Sub

#Region "Navigational Buttons"

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-group-list.aspx")
    End Sub

    Protected Sub btnToScreen1_Click(sender As Object, e As EventArgs)
        mvGroup.SetActiveView(viewGroupInfo)
        setClassForTabButtons(btnGoToGroupInfo, btnGoToGroupUsers, btnGoToGroupCourses, btnGoToGroupFiles)
    End Sub

    Protected Sub btnToScreen2_Click(sender As Object, e As EventArgs)
        mvGroup.SetActiveView(viewGroupUsers)
        setClassForTabButtons(btnGoToGroupUsers, btnGoToGroupInfo, btnGoToGroupCourses, btnGoToGroupFiles)
    End Sub

    Protected Sub btnToScreen3_Click(sender As Object, e As EventArgs)
        mvGroup.SetActiveView(viewCourses)
        setClassForTabButtons(btnGoToGroupCourses, btnGoToGroupInfo, btnGoToGroupUsers, btnGoToGroupFiles)
    End Sub

    Protected Sub btnToScreen4_Click(sender As Object, e As EventArgs)
        mvGroup.SetActiveView(viewGroupFiles)
        setClassForTabButtons(btnGoToGroupFiles, btnGoToGroupInfo, btnGoToGroupUsers, btnGoToGroupCourses)
    End Sub

    Public Shared Sub setClassForTabButtons(ByVal activeBtn As HtmlButton, ByVal naBtn1 As HtmlButton, naBtn2 As HtmlButton, naBtn3 As HtmlButton)
        activeBtn.Attributes("class") = "btn btn-primary btn-block cancel"
        naBtn1.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn2.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn3.Attributes("class") = "btn btn-link btn-block cancel"
    End Sub

#End Region

#Region "Submit Buttons"

    Protected Sub btnSubmitScreen1_Click(sender As Object, e As EventArgs)

    End Sub

#Region "Screen 2 Users - Gridview"

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

#Region "Screen 3 Courses - Gridview"

    Protected Sub gvCourses_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvCourses_RowCommand(sender As Object, e As GridViewCommandEventArgs)

    End Sub

    Protected Sub gvCourses_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub



#End Region

#Region "Screen 4 Files - Gridview"

    Protected Sub gvFiles_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvFiles_RowCommand(sender As Object, e As GridViewCommandEventArgs)

    End Sub

    Protected Sub gvFiles_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub



#End Region

#End Region



#Region "Modal Buttons"

    Protected Sub btnAddUser_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnAddCourse_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnAddFile_ServerClick(sender As Object, e As EventArgs)

    End Sub

#End Region


End Class