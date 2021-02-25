Imports MySql.Data.MySqlClient
Public Class facilitator_student_info
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            mvRegisterLearner.SetActiveView(viewAccountDetails)

            ViewState("s1") = False
            ViewState("s2") = False
            ViewState("s3") = False
            ViewState("s4") = False

            mockData()
            bindGVSubjects()
            bindGVWorkExp()
            bindGVQualifications()
            bindGVSkills()
            bindGVLanguages()
            'populateDdlPosition()

            'btnGoToAddressDetails.Visible = False
            'btnGoToNOKDetails.Visible = False
            'btnGoToEmploymentDetails.Visible = False
        End If

    End Sub

    Protected Sub mockData()

        txtUserName.Value = "croos"
        txtEmail.Value = "croos@gmail.com"
        txtCell.Value = "061 745 1245"
        ddlTitle.Items.Add("Mr")
        txtFirstName.Value = "Chris"
        txtLastName.Value = "Roos"
        ddlGender.Items.Add("Male")
        ddlRace.Items.Add("Black")
        ddlIdentificationType.Items.Add("South African ID")
        ddlIdentificationType.Items.Add("Passport Number")
        txtIdentificationValue.Value = "8902016745812"

        txtAddress.Value = "31 Heron Cove, The Coves"
        txtPostalCode.Value = "2092"

        ddlCountry.Items.FindByValue("ZAF").Selected = True
        ddlRegion.Items.Add("North West")
        ddlArea.Items.Add("Hartbeespoort")

        ddlNOKTitle.Items.Add("Ms")
        txtNOKFirstName.Value = "Sonja"
        txtNOKLastName.Value = "Roos"
        txtNOKRelation.Value = "Mother"
        txtNOKEmail.Value = "sonja@gmail.com"
        txtNOKPhone.Value = "012 621 8845"

        txtSchoolName.Value = "Hoërskool Hartbeespoort High School"
        ddlSchoolEndYear.Items.Add("1990")
    End Sub

#Region "Navigational Buttons"

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-dashboard.aspx")
    End Sub

    Protected Sub btnToScreen1_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewAccountDetails)
        setClassForTabButtons(btnGoToAccDetails, btnGoToAddressDetails, btnGoToNOKDetails, btnGoToEmploymentDetails,
                              btnGoToSecondaryEducationDetails, btnGoToWorkExperienceDetails,
                              btnGoToLanguageProficiencyDetails, btnGoToComputerLiteracyDetails, btnGoToTertiaryEducationDetails)
    End Sub

    Protected Sub btnToScreen2_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewAddressDetails)
        setClassForTabButtons(btnGoToAddressDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToEmploymentDetails,
                              btnGoToTertiaryEducationDetails, btnGoToWorkExperienceDetails, btnGoToLanguageProficiencyDetails,
                              btnGoToComputerLiteracyDetails, btnGoToSecondaryEducationDetails)
    End Sub

    Protected Sub btnToScreen3_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewNOKDetails)
        setClassForTabButtons(btnGoToNOKDetails, btnGoToAccDetails, btnGoToAddressDetails, btnGoToEmploymentDetails,
                            btnGoToSecondaryEducationDetails, btnGoToWorkExperienceDetails, btnGoToLanguageProficiencyDetails,
                            btnGoToComputerLiteracyDetails, btnGoToTertiaryEducationDetails)
    End Sub

    Protected Sub btnToScreen4_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewSystemPermissionDetails)
        setClassForTabButtons(btnGoToEmploymentDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToAddressDetails,
                                btnGoToSecondaryEducationDetails, btnGoToWorkExperienceDetails, btnGoToLanguageProficiencyDetails,
                                btnGoToComputerLiteracyDetails, btnGoToTertiaryEducationDetails)
    End Sub

    Protected Sub btnToScreen5_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewSecondaryEducationDetails)
        setClassForTabButtons(btnGoToSecondaryEducationDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToAddressDetails,
                                btnGoToEmploymentDetails, btnGoToWorkExperienceDetails, btnGoToLanguageProficiencyDetails, btnGoToComputerLiteracyDetails, btnGoToTertiaryEducationDetails)
    End Sub

    Protected Sub btnToScreen6_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewTertiaryEducationDetails)
        setClassForTabButtons(btnGoToTertiaryEducationDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToAddressDetails,
                                btnGoToEmploymentDetails, btnGoToLanguageProficiencyDetails, btnGoToSecondaryEducationDetails, btnGoToComputerLiteracyDetails, btnGoToWorkExperienceDetails)
    End Sub

    Protected Sub btnToScreen7_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewWorkExperienceDetails)
        setClassForTabButtons(btnGoToWorkExperienceDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToAddressDetails,
                                btnGoToEmploymentDetails, btnGoToLanguageProficiencyDetails, btnGoToSecondaryEducationDetails, btnGoToComputerLiteracyDetails, btnGoToTertiaryEducationDetails)
    End Sub

    Protected Sub btnToScreen8_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewComputerLiteracyDetails)
        setClassForTabButtons(btnGoToComputerLiteracyDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToAddressDetails,
                                btnGoToEmploymentDetails, btnGoToLanguageProficiencyDetails, btnGoToSecondaryEducationDetails, btnGoToWorkExperienceDetails, btnGoToTertiaryEducationDetails)
    End Sub

    Protected Sub btnToScreen9_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewLanguageProficiencyDetails)
        setClassForTabButtons(btnGoToLanguageProficiencyDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToAddressDetails,
                                btnGoToEmploymentDetails, btnGoToWorkExperienceDetails, btnGoToSecondaryEducationDetails, btnGoToComputerLiteracyDetails, btnGoToTertiaryEducationDetails)
    End Sub

    Protected Sub btnNoUser_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("index.aspx")
    End Sub

    Protected Sub btnYesUser_Click(sender As Object, e As EventArgs)
        mvRegisterLearner.SetActiveView(viewAccountDetails)
    End Sub

    Public Shared Sub setClassForTabButtons(ByVal activeBtn As HtmlButton, ByVal naBtn1 As HtmlButton, naBtn2 As HtmlButton, naBtn3 As HtmlButton,
                                            naBtn4 As HtmlButton, naBtn5 As HtmlButton, naBtn6 As HtmlButton, naBtn7 As HtmlButton, naBtn8 As HtmlButton)
        activeBtn.Attributes("class") = "btn btn-primary btn-block cancel"
        naBtn1.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn2.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn3.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn4.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn5.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn6.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn7.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn8.Attributes("class") = "btn btn-link btn-block cancel"

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



                msg = UserDetails.SetUserAccDetails(adminId, userId, username, firstName, lastName, maidenName, PhoneNum, email, cv, avatar)
                If msg.Equals("Success") Then
                    mvRegisterLearner.SetActiveView(viewAddressDetails)
                    register_user.setClassForTabButtons(btnGoToAddressDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToEmploymentDetails)
                    btnSubmitScreen1.Visible = False
                    btnToScreen2.Visible = True
                    btnGoToAddressDetails.Visible = True
                    ViewState("s1") = True
                Else
                    lblError1.Text = msg
                End If

            End If
        Else
            mvRegisterLearner.SetActiveView(viewAddressDetails)
            register_user.setClassForTabButtons(btnGoToAddressDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToEmploymentDetails)
        End If

    End Sub

    Protected Sub btnSubmitScreen2_Click(sender As Object, e As EventArgs)
        If ViewState("s2") = False Then

            'Dim msg As String = String.Empty
            'Dim adminId As String = Session("user_id")
            'Dim userId As String = Session("new_user_id")
            'Dim compId As Integer = Session("comp_id")
            'Dim branchId As Integer = ddlBranch.SelectedItem.Value.Trim
            'Dim departmentId As Integer = ddlDepartment.SelectedItem.Value.Trim
            'Dim positionId As Integer = ddlPosition.SelectedItem.Value
            'Dim startDate As DateTime = DateTime.Parse(txtJobStartDate.Value.ToString.Trim)
            'Dim maidenName As String = txtMaidenName.Value.Trim
            'Dim jobProfile As String = String.Empty
            'If upJobProfile.HasFile Then
            '    Try
            '        jobProfile = ID.Substring(0, 9) & upJobProfile.FileName.ToString
            '        upJobProfile.SaveAs(Server.MapPath("../../Files/job-profile/" & jobProfile))
            '    Catch ex As Exception
            '        msg = ex.Message.ToString
            '        lblError2.Text = msg
            '        Exit Sub
            '    End Try
            'End If

            'Dim perfAppraisal As String = String.Empty
            'If upPerformanceAppraisal.HasFile Then
            '    Try
            '        perfAppraisal = ID.Substring(0, 9) & upPerformanceAppraisal.FileName.ToString
            '        upJobProfile.SaveAs(Server.MapPath("../../Files/appraisal/" & perfAppraisal))
            '    Catch ex As Exception
            '        msg = ex.Message.ToString
            '        lblError2.Text = msg
            '        Exit Sub
            '    End Try
            'End If

            'Dim pdp As String = String.Empty
            'If upPDP.HasFile Then
            '    Try
            '        pdp = ID.Substring(0, 9) & upPDP.FileName.ToString
            '        upPDP.SaveAs(Server.MapPath("../../Files/pdp/" & pdp))
            '    Catch ex As Exception
            '        msg = ex.Message.ToString
            '        lblError2.Text = msg
            '        Exit Sub
            '    End Try
            'End If

            'msg = UserDetails.SetUserJobDetails(adminId, userId, compId, departmentId, branchId, startDate, positionId, jobProfile, perfAppraisal, pdp)
            'If msg.Equals("Success") Then
            '    mvRegisterLearner.SetActiveView(viewNOKDetails)
            '    register_user.setClassForTabButtons(btnGoToNOKDetails, btnGoToAccDetails, btnGoToAddressDetails, btnGoToEmploymentDetails)
            '    btnSubmitScreen2.Visible = False
            '    btnToScreen3.Visible = True
            '    btnGoToAddressDetails.Visible = True
            '    btnGoToNOKDetails.Visible = True
            '    ViewState("s2") = True
            'Else
            '    lblError2.Text = msg
            'End If

        Else
            mvRegisterLearner.SetActiveView(viewNOKDetails)
            register_user.setClassForTabButtons(btnGoToNOKDetails, btnGoToAccDetails, btnGoToAddressDetails, btnGoToEmploymentDetails)
        End If
    End Sub

    Protected Sub btnSubmitScreen3_Click(sender As Object, e As EventArgs)
        If ViewState("s3") = False Then

            Dim msg As String = String.Empty
            Dim adminId As String = Session("user_id")
            Dim userId As String = Session("new_user_id")
            Dim compId As Integer = Session("comp_id")
            Dim directReportToId As String = String.Empty
            Dim indirectReportToId As String = String.Empty

            msg = UserDetails.SetCommunicationDetails(adminId, userId, compId, directReportToId, indirectReportToId)
            If msg.Equals("Success") Then
                mvRegisterLearner.SetActiveView(viewSystemPermissionDetails)
                register_user.setClassForTabButtons(btnGoToEmploymentDetails, btnGoToAccDetails, btnGoToAddressDetails, btnGoToNOKDetails)
                btnSubmitScreen3.Visible = False
                btnToScreen3.Visible = True
                btnGoToAddressDetails.Visible = True
                btnGoToNOKDetails.Visible = True
                btnGoToEmploymentDetails.Visible = True
                ViewState("s3") = True
            Else
                lblError3.Text = msg
            End If

        Else
            mvRegisterLearner.SetActiveView(viewSystemPermissionDetails)
            register_user.setClassForTabButtons(btnGoToEmploymentDetails, btnGoToAccDetails, btnGoToAddressDetails, btnGoToNOKDetails)
        End If
    End Sub

    Protected Sub btnSubmitScreen4_Click(sender As Object, e As EventArgs)

        If ViewState("s4") = False Then

            Dim msg As String = String.Empty
            Dim adminId As String = Session("user_id")
            Dim companyId As Integer = Session("comp_id")
            Dim userId As String = Session("new_user_id")

            'If cbAssessor.Checked Then
            '    Dim fileName As String = String.Empty
            '    Dim issueDate As DateTime = txtAssessorIssueDate.Value
            '    Dim expDate As DateTime = txtAssessorExpirationDate.Value
            '    If upAssessorSuppDoc.HasFile Then
            '        Try
            '            fileName = ID.Substring(0, 9) & upAssessorSuppDoc.FileName.ToString
            '            upAssessorSuppDoc.SaveAs(Server.MapPath("../../Files/support/" & fileName))
            '        Catch ex As Exception
            '            msg = ex.Message.ToString
            '            lblError4.Text = msg
            '            Exit Sub
            '        End Try
            '    End If
            '    msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 6, fileName, issueDate, expDate)
            'End If

            'If cbModerator.Checked Then
            '    Dim fileName As String = String.Empty
            '    Dim issueDate As DateTime = txtModeratorIssueDate.Value
            '    Dim expDate As DateTime = txtModeratorExpirationDate.Value
            '    If upModeratorSuppDoc.HasFile Then
            '        Try
            '            fileName = ID.Substring(0, 9) & upModeratorSuppDoc.FileName.ToString
            '            upModeratorSuppDoc.SaveAs(Server.MapPath("../../Files/support/" & fileName))
            '        Catch ex As Exception
            '            msg = ex.Message.ToString
            '            lblError4.Text = msg
            '            Exit Sub
            '        End Try
            '    End If
            '    msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 5, fileName, issueDate, expDate)
            'End If

            'If cbFacilitator.Checked Then
            '    Dim fileName As String = String.Empty
            '    Dim issueDate As DateTime = txtFacilitatorIssuedDate.Value
            '    Dim expDate As DateTime = txtFacilitatorExpirationDate.Value
            '    If upAssessorSuppDoc.HasFile Then
            '        Try
            '            fileName = ID.Substring(0, 9) & upFacilitatorSuppDoc.FileName.ToString
            '            upFacilitatorSuppDoc.SaveAs(Server.MapPath("../../Files/support/" & fileName))
            '        Catch ex As Exception
            '            msg = ex.Message.ToString
            '            lblError4.Text = msg
            '            Exit Sub
            '        End Try
            '    End If
            '    msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 6, fileName, issueDate, expDate)
            'End If

            'If cbMentor.Checked Then
            '    Dim fileName As String = String.Empty
            '    Dim issueDate As DateTime = DateTime.Now
            '    Dim expDate As DateTime = DateTime.Now
            '    If upMentorSuppDoc.HasFile Then
            '        Try
            '            fileName = ID.Substring(0, 9) & upMentorSuppDoc.FileName.ToString
            '            upMentorSuppDoc.SaveAs(Server.MapPath("../../Files/support/" & fileName))
            '        Catch ex As Exception
            '            msg = ex.Message.ToString
            '            lblError4.Text = msg
            '            Exit Sub
            '        End Try
            '    End If
            '    msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 3, fileName, issueDate, expDate)
            'End If

            'If cbAdmin.Checked Then
            '    Dim fileName As String = "NULL"
            '    Dim issueDate As DateTime = DateTime.Now
            '    Dim expDate As DateTime = DateTime.Now

            '    msg = UserDetails.SetPermissionDetails(adminId, userId, companyId, 7, fileName, issueDate, expDate)
            'End If

            If msg.Equals("Success") Then
                mvRegisterLearner.SetActiveView(viewAddressDetails)
                register_user.setClassForTabButtons(btnGoToAddressDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToEmploymentDetails)
                btnSubmitScreen4.Visible = False
                btnToScreen4.Visible = True
                btnGoToEmploymentDetails.Visible = True
                ViewState("s4") = True
            Else
                lblError1.Text = msg
            End If

        Else
            mvRegisterLearner.SetActiveView(viewAddressDetails)
            register_user.setClassForTabButtons(btnGoToAddressDetails, btnGoToAccDetails, btnGoToNOKDetails, btnGoToEmploymentDetails)
        End If

    End Sub

    Protected Sub btnSubmitScreen5_Click(sender As Object, e As EventArgs)

    End Sub

#Region "Screen 5 - Academic Details Gridview"

    Protected Sub bindGVSubjects()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("Subject"), New DataColumn("Mark")})
        dt.Rows.Add("English", "79")
        dt.Rows.Add("Afrikaans", "61")
        dt.Rows.Add("Information Technology", "97")

        gvSubjects.DataSource = dt
        gvSubjects.DataBind()


    End Sub

    Protected Sub btnAddSubject_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub gvSubjects_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvSubjects_RowCommand(sender As Object, e As GridViewCommandEventArgs)

    End Sub

    Protected Sub gvSubjects_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub


#End Region


    Protected Sub btnSubmitScreen6_Click(sender As Object, e As EventArgs)

    End Sub

#Region "Screen 6 Tertiary Education Details GridView"

    Protected Sub bindGVQualifications()

        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(2) {New DataColumn("Institution"), New DataColumn("EndDate"), New DataColumn("Certificate")})
        dt.Rows.Add("North West University", "10/08/2019", "certificate.pdf")
        dt.Rows.Add("University of Johannesburg", "01/02/2020", "uj_bcom_23513232.pdf")

        gvQualifications.DataSource = dt
        gvQualifications.DataBind()


    End Sub

    Protected Sub btnAddQualification_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub gvQualifications_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvQualifications_RowCommand(sender As Object, e As GridViewCommandEventArgs)

    End Sub

    Protected Sub gvQualifications_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub

#End Region



    Protected Sub btnSubmitScreen7_Click(sender As Object, e As EventArgs)

    End Sub

#Region "Screen 7 - Work Experience Details GridView"

    Protected Sub bindGVWorkExp()

        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(2) {New DataColumn("Institution"), New DataColumn("StartDate"), New DataColumn("EndDate")})
        dt.Rows.Add("GST", "10/08/2019", "31/01/2020")
        dt.Rows.Add("Makro", "01/02/2020", "31/04/2020")
        dt.Rows.Add("RED", "10/05/2020", "05/11/2020")

        gvWorkExperience.DataSource = dt
        gvWorkExperience.DataBind()


    End Sub

    Protected Sub btnAddWorkExperience_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub gvWorkExperience_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvWorkExperience_RowCommand(sender As Object, e As GridViewCommandEventArgs)

    End Sub

    Protected Sub gvWorkExperience_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub


#End Region

    Protected Sub btnSubmitScreen8_Click(sender As Object, e As EventArgs)

    End Sub

#Region "Screen 8 - Computer Literacy Gridview"

    Protected Sub bindGVSkills()

        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("Skill"), New DataColumn("Rating")})
        dt.Rows.Add("Outlook", "Good")
        dt.Rows.Add("Excel", "Poor")
        dt.Rows.Add("Word", "Fair")

        gvSkills.DataSource = dt
        gvSkills.DataBind()


    End Sub

    Protected Sub btnAddSkill_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub gvSkills_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvSkills_RowCommand(sender As Object, e As GridViewCommandEventArgs)

    End Sub

    Protected Sub gvSkills_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub

#End Region

    Protected Sub btnSubmitScreen9_Click(sender As Object, e As EventArgs)

    End Sub

#Region "Screen 9 - Language Proficiency Gridview"

    Protected Sub bindGVLanguages()

        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("Language"), New DataColumn("Rating")})
        dt.Rows.Add("English", "Good")
        dt.Rows.Add("Xhosa", "Poor")
        dt.Rows.Add("Afrikaans", "Fair")

        gvLanguages.DataSource = dt
        gvLanguages.DataBind()


    End Sub

    Protected Sub btnAddLanguage_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub gvLanguages_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvLanguages_RowCommand(sender As Object, e As GridViewCommandEventArgs)

    End Sub

    Protected Sub gvLanguages_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub

#End Region

    Protected Sub btnNoUser_ServerClick1(sender As Object, e As EventArgs)
        Response.Redirect("admin-dashboard.aspx")
    End Sub

    Protected Sub btnYesUser_Click1(sender As Object, e As EventArgs)
        Response.Redirect(Request.RawUrl)
    End Sub

#End Region

#Region "Populate Dropdowns"

    Protected Sub ddlCountry_SelectedIndexChanged(sender As Object, e As EventArgs)
        populateRegion(ddlCountry, ddlRegion, ddlArea)
    End Sub

    Protected Sub ddlRegion_SelectedIndexChanged(sender As Object, e As EventArgs)
        populateArea(ddlRegion, ddlArea)
    End Sub

    Protected Sub ddlNOKCountry_SelectedIndexChanged(sender As Object, e As EventArgs)
        populateRegion(ddlNOKCountry, ddlNOKRegion, ddlNOKArea)
    End Sub

    Protected Sub ddlNOKRegion_SelectedIndexChanged(sender As Object, e As EventArgs)
        populateArea(ddlNOKRegion, ddlNOKArea)
    End Sub

    Protected Sub ddlEmpRegion_SelectedIndexChanged(sender As Object, e As EventArgs)
        populateArea(ddlEmpRegion, ddlEmpArea)
    End Sub

    Protected Sub ddlEmpCountry_SelectedIndexChanged(sender As Object, e As EventArgs)
        populateRegion(ddlEmpCountry, ddlEmpRegion, ddlEmpArea)
    End Sub

    Protected Sub populateRegion(ddlCont As DropDownList, ddlReg As DropDownList, ddlAre As DropDownList)
        Dim selectedValue As String = ddlCont.SelectedItem.Value.ToString

        If Not selectedValue.Equals("0") Then

            Dim dt As DataTable = ValueObjects.getProvincesByCountryCode(selectedValue)

            ddlReg.Items.Clear()
            ddlAre.Items.Clear()

            For row = 0 To dt.Rows.Count - 1
                ddlReg.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("Id")))
            Next

        End If
    End Sub

    Protected Sub populateArea(ddlReg As DropDownList, ddlAre As DropDownList)
        Dim dt As DataTable = ValueObjects.getCitiesByProvinceId(ddlReg.SelectedItem.Value.ToString)

        ddlAre.Items.Clear()
        For row = 0 To dt.Rows.Count - 1
            ddlAre.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("Id")))
        Next
    End Sub

    Protected Sub ddlCriminalConviction_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub ddlEmploymentDismissal_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub











#End Region



    'Protected Sub btnAddDisability_ServerClick(sender As Object, e As EventArgs)
    '    lblErrorModal.Visible = False
    '    Dim positiontName As String = txtPosition.Value.ToString.Trim
    '    If String.IsNullOrEmpty(positiontName) Then
    '        lblErrorModal.Text = "Please fill int the position name"
    '        Exit Sub
    '    End If
    '    Dim item As ListItem = ddlPosition.Items.FindByText(positiontName)
    '    If IsNothing(item) Then
    '        Dim msg As String = ValueObjects.insertPosition(positiontName, positiontDescription)
    '        'Feedback to user
    '        If msg.Equals("1") Then
    '            'lblErrorDepartment.Visible = True
    '            'lblErrorDepartment.ForeColor = Drawing.Color.Green
    '            'lblErrorDepartment.Text = departmentName & " added successfully."
    '            'Update the selected Item
    '            populateDdlPosition()
    '            ddlPosition.Items.FindByText(positiontName).Selected = True
    '        Else
    '            lblErrorModal.Visible = True
    '            lblErrorModal.ForeColor = Drawing.Color.Red
    '            lblErrorModal.Text = msg
    '        End If
    '    ElseIf item.Text.Equals(positiontName) Then
    '        'Feedback to user
    '        'lblErrorDepartment.Visible = True
    '        'lblErrorDepartment.ForeColor = Drawing.Color.Red
    '        'lblErrorDepartment.Text = "This department already exists."
    '        ddlPosition.ClearSelection()
    '        ddlPosition.Items.FindByText(positiontName).Selected = True
    '        Exit Sub
    '    End If
    'End Sub


End Class
