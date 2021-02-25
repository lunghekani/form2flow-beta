Imports MySql.Data.MySqlClient

Public Class admin_user_add
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            mvRegisterUser.SetActiveView(viewAccountDetails)

            ViewState("s1") = False
            ViewState("s2") = False
            ViewState("s3") = False
            ViewState("s4") = False

            populateDdlPosition()

            'btnGoToJobDetails.Visible = False
            'btnGoToCommDetails.Visible = False
            'btnGoToSysPermissionDetails.Visible = False
        End If

    End Sub


#Region "Navigational Buttons"

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-dashboard.aspx")
    End Sub

    Protected Sub btnToScreen1_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewAccountDetails)
        setClassForTabButtons(btnGoToAccDetails, btnGoToJobDetails, btnGoToCommDetails, btnGoToSysPermissionDetails)
    End Sub

    Protected Sub btnToScreen2_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewJobDetails)
        setClassForTabButtons(btnGoToJobDetails, btnGoToAccDetails, btnGoToCommDetails, btnGoToSysPermissionDetails)
    End Sub

    Protected Sub btnToScreen3_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewCommunicationDetails)
        setClassForTabButtons(btnGoToCommDetails, btnGoToAccDetails, btnGoToJobDetails, btnGoToSysPermissionDetails)
    End Sub

    Protected Sub btnToScreen4_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewSystemPermissionDetails)
        setClassForTabButtons(btnGoToSysPermissionDetails, btnGoToAccDetails, btnGoToCommDetails, btnGoToJobDetails)
    End Sub

    Protected Sub btnNoUser_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("index.aspx")
    End Sub

    Protected Sub btnYesUser_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewAccountDetails)
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

        If ViewState("s1") = False Then

            index.setConn("users")
            Dim conn As MySqlConnection = Session("conn")
            Dim msg As String = String.Empty
            Dim adminId As String = Session("user_id")
            Dim userId As String = Guid.NewGuid.ToString
            Dim username As String = txtUserName.Value.ToString.Trim
            Dim email As String = txtEmail.Value.ToString.Trim
            Dim firstName As String = txtFirstName.Value.ToString.Trim
            Dim lastName As String = txtLastName.Value.ToString.Trim
            Dim maidenName As String = txtMaidenName.Value.Trim
            If String.IsNullOrEmpty(maidenName) Then
                maidenName = "NULL"
            End If

            Dim PhoneNum As String = txtCell.Value.ToString.Trim
            Dim usernameExists As Boolean = database_operations.doesFieldExistInTable("UserName", username, "user_names", conn)
            Dim emailExists As Boolean = database_operations.doesFieldExistInTable("EmailAddress", email, "user_emails", conn)
            Dim cellExists As Boolean = database_operations.doesFieldExistInTable("ContactNumber", PhoneNum, "user_contact_numbers", conn)
            If usernameExists = True Then
                lblError1.Visible = True
                lblError1.ForeColor = Drawing.Color.Red
                lblError1.Text = "This username is not available."
                Exit Sub
            ElseIf emailExists = True Then
                lblError1.Visible = True
                lblError1.ForeColor = Drawing.Color.Red
                lblError1.Text = "This email belongs to another user."
                Exit Sub
            ElseIf cellExists = True Then
                lblError1.Visible = True
                lblError1.ForeColor = Drawing.Color.Red
                lblError1.Text = "This phone number belongs to another user."
                Exit Sub

            Else

                Dim id As String = Guid.NewGuid.ToString
                Dim avatar As String = String.Empty
                Dim cv As String = String.Empty
                If upAvatar.HasFile Then
                    Try
                        avatar = id.Substring(0, 9) & upAvatar.FileName.ToString
                        upAvatar.SaveAs(Server.MapPath("../../Files/avatar/" & avatar))
                    Catch ex As Exception
                        msg = ex.Message.ToString
                        lblError1.Text = msg
                        Exit Sub
                    End Try
                End If

                If upCV.HasFile Then
                    Try
                        cv = id.Substring(0, 9) & upCV.FileName.ToString
                        upAvatar.SaveAs(Server.MapPath("../../Files/cv/" & cv))
                    Catch ex As Exception
                        msg = ex.Message.ToString
                        lblError1.Text = msg
                        Exit Sub
                    End Try
                End If

                msg = UserDetails.SetUserAccDetails(adminId, userId, username, firstName, lastName, maidenName, PhoneNum, email, cv, avatar)
                If msg.Equals("Success") Then
                    mvRegisterUser.SetActiveView(viewJobDetails)
                    register_user.setClassForTabButtons(btnGoToJobDetails, btnGoToAccDetails, btnGoToCommDetails, btnGoToSysPermissionDetails)
                    btnSubmitScreen1.Visible = False
                    btnToScreen2.Visible = True
                    btnGoToJobDetails.Visible = True
                    ViewState("s1") = True
                Else
                    lblError1.Text = msg
                End If

            End If
        Else
            mvRegisterUser.SetActiveView(viewJobDetails)
            register_user.setClassForTabButtons(btnGoToJobDetails, btnGoToAccDetails, btnGoToCommDetails, btnGoToSysPermissionDetails)
        End If

    End Sub

    Protected Sub btnSubmitScreen2_Click(sender As Object, e As EventArgs)
        If ViewState("s2") = False Then

            Dim msg As String = String.Empty
            Dim adminId As String = Session("user_id")
            Dim userId As String = Session("new_user_id")
            Dim compId As Integer = Session("comp_id")
            Dim branchId As Integer = ddlBranch.SelectedItem.Value.Trim
            Dim departmentId As Integer = ddlDepartment.SelectedItem.Value.Trim
            Dim positionId As Integer = ddlPosition.SelectedItem.Value
            Dim startDate As DateTime = DateTime.Parse(txtJobStartDate.Value.ToString.Trim)
            Dim maidenName As String = txtMaidenName.Value.Trim
            Dim jobProfile As String = String.Empty
            If upJobProfile.HasFile Then
                Try
                    jobProfile = ID.Substring(0, 9) & upJobProfile.FileName.ToString
                    upJobProfile.SaveAs(Server.MapPath("../../Files/job-profile/" & jobProfile))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    lblError2.Text = msg
                    Exit Sub
                End Try
            End If

            Dim perfAppraisal As String = String.Empty
            If upPerformanceAppraisal.HasFile Then
                Try
                    perfAppraisal = ID.Substring(0, 9) & upPerformanceAppraisal.FileName.ToString
                    upJobProfile.SaveAs(Server.MapPath("../../Files/appraisal/" & perfAppraisal))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    lblError2.Text = msg
                    Exit Sub
                End Try
            End If

            Dim pdp As String = String.Empty
            If upPDP.HasFile Then
                Try
                    pdp = ID.Substring(0, 9) & upPDP.FileName.ToString
                    upPDP.SaveAs(Server.MapPath("../../Files/pdp/" & pdp))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    lblError2.Text = msg
                    Exit Sub
                End Try
            End If

            msg = UserDetails.SetUserJobDetails(adminId, userId, compId, departmentId, branchId, startDate, positionId, jobProfile, perfAppraisal, pdp)
            If msg.Equals("Success") Then
                mvRegisterUser.SetActiveView(viewCommunicationDetails)
                register_user.setClassForTabButtons(btnGoToCommDetails, btnGoToAccDetails, btnGoToJobDetails, btnGoToSysPermissionDetails)
                btnSubmitScreen2.Visible = False
                btnToScreen3.Visible = True
                btnGoToJobDetails.Visible = True
                btnGoToCommDetails.Visible = True
                ViewState("s2") = True
            Else
                lblError2.Text = msg
            End If

        Else
            mvRegisterUser.SetActiveView(viewCommunicationDetails)
            register_user.setClassForTabButtons(btnGoToCommDetails, btnGoToAccDetails, btnGoToJobDetails, btnGoToSysPermissionDetails)
        End If
    End Sub

    Protected Sub btnSubmitScreen3_Click(sender As Object, e As EventArgs)
        If ViewState("s3") = False Then

            Dim msg As String = String.Empty
            Dim adminId As String = Session("user_id")
            Dim userId As String = Session("new_user_id")
            Dim compId As Integer = Session("comp_id")
            Dim directReportToId As String = ddlDirectReportTo.SelectedItem.Value.Trim
            Dim indirectReportToId As String = ddlIndirectReportTo.SelectedItem.Value.Trim

            msg = UserDetails.SetCommunicationDetails(adminId, userId, compId, directReportToId, indirectReportToId)
            If msg.Equals("Success") Then
                mvRegisterUser.SetActiveView(viewSystemPermissionDetails)
                register_user.setClassForTabButtons(btnGoToSysPermissionDetails, btnGoToAccDetails, btnGoToJobDetails, btnGoToCommDetails)
                btnSubmitScreen3.Visible = False
                btnToScreen3.Visible = True
                btnGoToJobDetails.Visible = True
                btnGoToCommDetails.Visible = True
                btnGoToSysPermissionDetails.Visible = True
                ViewState("s3") = True
            Else
                lblError3.Text = msg
            End If

        Else
            mvRegisterUser.SetActiveView(viewSystemPermissionDetails)
            register_user.setClassForTabButtons(btnGoToSysPermissionDetails, btnGoToAccDetails, btnGoToJobDetails, btnGoToCommDetails)
        End If
    End Sub

    Protected Sub btnSubmitScreen4_Click(sender As Object, e As EventArgs)

        If ViewState("s4") = False Then

            Dim msg As String = String.Empty
            Dim adminId As String = Session("user_id")
            Dim companyId As Integer = Session("comp_id")
            Dim userId As String = Session("new_user_id")

            If cbAssessor.Checked Then
                Dim fileName As String = String.Empty
                Dim issueDate As DateTime = txtAssessorIssueDate.Value
                Dim expDate As DateTime = txtAssessorExpirationDate.Value
                If upAssessorSuppDoc.HasFile Then
                    Try
                        fileName = ID.Substring(0, 9) & upAssessorSuppDoc.FileName.ToString
                        upAssessorSuppDoc.SaveAs(Server.MapPath("../../Files/support/" & fileName))
                    Catch ex As Exception
                        msg = ex.Message.ToString
                        lblError4.Text = msg
                        Exit Sub
                    End Try
                End If
                msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 6, fileName, issueDate, expDate)
            End If

            If cbModerator.Checked Then
                Dim fileName As String = String.Empty
                Dim issueDate As DateTime = txtModeratorIssueDate.Value
                Dim expDate As DateTime = txtModeratorExpirationDate.Value
                If upModeratorSuppDoc.HasFile Then
                    Try
                        fileName = ID.Substring(0, 9) & upModeratorSuppDoc.FileName.ToString
                        upModeratorSuppDoc.SaveAs(Server.MapPath("../../Files/support/" & fileName))
                    Catch ex As Exception
                        msg = ex.Message.ToString
                        lblError4.Text = msg
                        Exit Sub
                    End Try
                End If
                msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 5, fileName, issueDate, expDate)
            End If

            If cbFacilitator.Checked Then
                Dim fileName As String = String.Empty
                Dim issueDate As DateTime = txtFacilitatorIssuedDate.Value
                Dim expDate As DateTime = txtFacilitatorExpirationDate.Value
                If upAssessorSuppDoc.HasFile Then
                    Try
                        fileName = ID.Substring(0, 9) & upFacilitatorSuppDoc.FileName.ToString
                        upFacilitatorSuppDoc.SaveAs(Server.MapPath("../../Files/support/" & fileName))
                    Catch ex As Exception
                        msg = ex.Message.ToString
                        lblError4.Text = msg
                        Exit Sub
                    End Try
                End If
                msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 6, fileName, issueDate, expDate)
            End If

            If cbMentor.Checked Then
                Dim fileName As String = String.Empty
                Dim issueDate As DateTime = DateTime.Now
                Dim expDate As DateTime = DateTime.Now
                If upMentorSuppDoc.HasFile Then
                    Try
                        fileName = ID.Substring(0, 9) & upMentorSuppDoc.FileName.ToString
                        upMentorSuppDoc.SaveAs(Server.MapPath("../../Files/support/" & fileName))
                    Catch ex As Exception
                        msg = ex.Message.ToString
                        lblError4.Text = msg
                        Exit Sub
                    End Try
                End If
                msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 3, fileName, issueDate, expDate)
            End If

            If cbAdmin.Checked Then
                Dim fileName As String = "NULL"
                Dim issueDate As DateTime = DateTime.Now
                Dim expDate As DateTime = DateTime.Now

                msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 7, fileName, issueDate, expDate)
            End If

            If msg.Equals("Success") Then
                mvRegisterUser.SetActiveView(viewJobDetails)
                register_user.setClassForTabButtons(btnGoToJobDetails, btnGoToAccDetails, btnGoToCommDetails, btnGoToSysPermissionDetails)
                btnSubmitScreen4.Visible = False
                btnToScreen4.Visible = True
                btnGoToSysPermissionDetails.Visible = True
                ViewState("s4") = True
            Else
                lblError1.Text = msg
            End If

        Else
            mvRegisterUser.SetActiveView(viewJobDetails)
            register_user.setClassForTabButtons(btnGoToJobDetails, btnGoToAccDetails, btnGoToCommDetails, btnGoToSysPermissionDetails)
        End If

    End Sub

    Protected Sub btnNoUser_ServerClick1(sender As Object, e As EventArgs)
        Response.Redirect("admin-dashboard.aspx")
    End Sub

    Protected Sub btnYesUser_Click1(sender As Object, e As EventArgs)
        Response.Redirect(Request.RawUrl)
    End Sub

#End Region

#Region "Populate Dropdowns"

    Protected Sub populateDdlBranch(ByVal companyId As Integer)

        Dim dt As DataTable = ValueObjects.getBranches(companyId)
        ddlBranch.Items.Clear()

        For row = 0 To dt.Rows.Count - 1
            ddlBranch.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("ID")))
        Next
    End Sub

    Protected Sub ddlBranch_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim branchId As String = Integer.Parse(ddlBranch.SelectedValue.ToString.Trim)
        Dim dt As DataTable = ValueObjects.getDepartmentsPerInstitution(branchId)
        ddlDepartment.Items.Clear()

        For row = 0 To dt.Rows.Count - 1
            ddlDepartment.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("ID")))
        Next

    End Sub

    Protected Sub populateDdlPosition()

        Dim dt As DataTable = ValueObjects.getPositions()
        ddlPosition.Items.Clear()

        For row = 0 To dt.Rows.Count - 1
            ddlPosition.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("ID")))
        Next
    End Sub

    Protected Sub populateDdlReportTo(ByVal companyId As String)

        Dim dt As DataTable = UserDetails.getManagersPerInstitutions(companyId)
        ddlDirectReportTo.Items.Clear()
        ddlIndirectReportTo.Items.Clear()

        For row = 0 To dt.Rows.Count - 1
            ddlDirectReportTo.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("ID")))
            ddlIndirectReportTo.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("ID")))
        Next
    End Sub

#End Region



    Protected Sub btnAddPosition_ServerClick(sender As Object, e As EventArgs)
        lblErrorModal.Visible = False
        Dim positiontName As String = txtPosition.Value.ToString.Trim
        Dim positiontDescription As String = txtPositionDescription.Value.ToString.Trim
        If String.IsNullOrEmpty(positiontName) Then
            lblErrorModal.Text = "Please fill int the position name"
            Exit Sub
        End If
        If String.IsNullOrEmpty(positiontDescription) Then
            positiontDescription = "NULL"
        End If
        Dim item As ListItem = ddlPosition.Items.FindByText(positiontName)
        If IsNothing(item) Then
            Dim msg As String = ValueObjects.insertPosition(positiontName, positiontDescription)
            'Feedback to user
            If msg.Equals("1") Then
                'lblErrorDepartment.Visible = True
                'lblErrorDepartment.ForeColor = Drawing.Color.Green
                'lblErrorDepartment.Text = departmentName & " added successfully."
                'Update the selected Item
                populateDdlPosition()
                ddlPosition.Items.FindByText(positiontName).Selected = True
            Else
                lblErrorModal.Visible = True
                lblErrorModal.ForeColor = Drawing.Color.Red
                lblErrorModal.Text = msg
            End If
        ElseIf item.Text.Equals(positiontName) Then
            'Feedback to user
            'lblErrorDepartment.Visible = True
            'lblErrorDepartment.ForeColor = Drawing.Color.Red
            'lblErrorDepartment.Text = "This department already exists."
            ddlPosition.ClearSelection()
            ddlPosition.Items.FindByText(positiontName).Selected = True
            Exit Sub
        End If
    End Sub


End Class
