Imports MySql.Data.MySqlClient

Public Class facilitator_student_add
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            mvRegisterLearner.SetActiveView(viewAccountDetails)

            ViewState("s1") = False
            ViewState("s2") = False
            ViewState("s3") = False
            ViewState("s4") = False



            'populateDdlPosition()

            'btnGoToAddressDetails.Visible = False
            'btnGoToNOKDetails.Visible = False
            'btnGoToEmploymentDetails.Visible = False
        End If

    End Sub


#Region "Navigational Buttons"

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("facilitator-student-list.aspx")
    End Sub


    Protected Sub btnNoUser_ServerClick1(sender As Object, e As EventArgs)
        Response.Redirect("facilitator-student-list.aspx")
    End Sub

    Protected Sub btnYesUser_Click1(sender As Object, e As EventArgs)
        Response.Redirect(Request.RawUrl)
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
                    mvRegisterLearner.SetActiveView(viewAddAnotherUser)
                    ViewState("s1") = True
                Else
                    lblError1.Text = msg
                End If

            End If
        Else
            mvRegisterLearner.SetActiveView(viewAddAnotherUser)
        End If

    End Sub



#End Region

#Region "Populate Dropdowns"


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
