
Imports MySql.Data.MySqlClient

Public Class admin_branch_add
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            mvRegisterCompany.SetActiveView(viewAddressDetails)
            populateDdlDepartment()

            ViewState("s1") = False
            ViewState("s2") = False
            ViewState("s3") = False
            ViewState("s4") = False

            btnGoToContactDetails.Visible = False
            btnGoToCompDetails.Visible = False
            btnGoToCompContDetails.Visible = False
        End If

    End Sub


#Region "Navigational Buttons"

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-dashboard.aspx")
    End Sub

    Protected Sub btnBackToScreen1_Click(sender As Object, e As EventArgs)
        mvRegisterCompany.SetActiveView(viewAddressDetails)
        register_user.setClassForTabButtons(btnGoToAddressDetails, btnGoToContactDetails, btnGoToCompContDetails, btnGoToCompDetails)
    End Sub

    Protected Sub btnToScreen2_Click(sender As Object, e As EventArgs)
        mvRegisterCompany.SetActiveView(viewContactDetails)
        register_user.setClassForTabButtons(btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToCompDetails)
    End Sub

    Protected Sub btnToScreen3_Click(sender As Object, e As EventArgs)
        mvRegisterCompany.SetActiveView(viewOtherDetails)
        register_user.setClassForTabButtons(btnGoToCompDetails, btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails)
    End Sub

    Protected Sub btnToScreen4_Click(sender As Object, e As EventArgs)
        mvRegisterCompany.SetActiveView(viewOtherDetailsCont)
        register_user.setClassForTabButtons(btnGoToCompContDetails, btnGoToAddressDetails, btnGoToContactDetails, btnGoToCompDetails)
    End Sub

    Protected Sub btnDashboard_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-dashboard.aspx")
    End Sub

    Protected Sub btnAddUser_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-user-add.aspx")
    End Sub



#End Region

#Region "Submit Buttons"

    Protected Sub btnSubmitScreen1_Click(sender As Object, e As EventArgs)

        If ViewState("s1") = False Then


            Dim conn As MySqlConnection = index.setConn("institutions")
            Dim userId As String = "00000000000000000000000000000000000001"
            Dim compId As String = Session("comp_id")
            Dim vatNum As String = txtCompVATNum.Value.ToString.Trim
            Dim compName As String = txtCompName.Value.ToString.Trim
            Dim compRegNum As String = txtCompRegNum.Value.ToString.Trim
            Dim compRegExists As Boolean = database_operations.doesFieldExistInTable("RegistrationNumber", compRegNum, "institution_reg_no", conn)
            Dim compNameExists As Boolean = database_operations.doesFieldExistInTable("InstitutionName", compName, "institution_names", conn)
            Dim compVATNumExists As Boolean = database_operations.doesFieldExistInTable("VATNumber", vatNum, "institution_vat_no", conn)
            If compRegExists = True OrElse compNameExists = True OrElse compVATNumExists = True Then
                lblError1.Visible = True
                lblError1.ForeColor = Drawing.Color.Red
                lblError1.Text = "This company has already been registered."
                Exit Sub
            Else
                Dim address As String = txtAddress.Value.ToString.Trim
                Dim countryCode As String = ddlCountry.SelectedValue.ToString.Trim
                Dim regionId As String = ddlRegion.SelectedValue.ToString.Trim
                Dim areaId As String = ddlArea.SelectedValue.ToString.Trim
                Dim gps As String = txtGPS.Value.ToString.Trim

                Dim msg As String = Instituition.SetBranchAddressDetails(userId, compId, compName, 1, 0, 0,
                                                                        address, countryCode, regionId, areaId, gps, compRegNum, vatNum)
                If msg.Equals("Success") Then
                    mvRegisterCompany.SetActiveView(viewContactDetails)
                    register_user.setClassForTabButtons(btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToCompDetails)
                    btnSubmitScreen1.Visible = False
                    btnToScreen2.Visible = True
                    btnGoToContactDetails.Visible = True
                    ViewState("s1") = True
                Else
                    lblError1.Text = msg
                End If

            End If
        Else
            mvRegisterCompany.SetActiveView(viewContactDetails)
            register_user.setClassForTabButtons(btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToCompDetails)
        End If


    End Sub

    Protected Sub btnSubmitScreen2_Click(sender As Object, e As EventArgs)
        If ViewState("s2") = False Then
            index.setConn("institutions")
            Dim conn As MySqlConnection = Session("conn")
            Dim userId As String = "00000000000000000000000000000000000001"
            Dim compId As String = Session("comp_id")
            Dim msg As String = String.Empty

            Dim locationId As String = Session("loc_id")
            Dim phoneNum As String = txtTel.Value.ToString.Trim
            Dim faxNum As String = txtFax.Value.ToString.Trim
            If String.IsNullOrEmpty(faxNum) Then
                faxNum = "NULL"
            End If
            Dim email As String = txtEmail.Value.ToString.Trim
            Dim website As String = txtWebsite.Value.ToString.Trim
            If String.IsNullOrEmpty(website) Then
                website = "NULL"
            End If

            'Add company tour files
            If upCompanyTour.HasFile Then

                Dim sb As New StringBuilder

                'Build the query
                sb.Append("INSERT INTO institutions.Institution_files(Institution_ID,FileName,FileDescription,FilePath) VALUES")

                For Each file In upCompanyTour.PostedFiles
                    Try
                        Dim id As String = Guid.NewGuid.ToString
                        Dim FileName As String = id.Substring(0, 9) & file.FileName.ToString
                        upCompanyTour.SaveAs(Server.MapPath("../../Files/tour/" & FileName))
                        sb.Append("(")
                        sb.Append(compId)
                        sb.Append(",'")
                        sb.Append(FileName)
                        sb.Append("','COMPANY TOURS FILE','Files/tour/')")
                        sb.Append(",")

                    Catch ex As Exception
                        msg = ex.Message.ToString
                        lblError2.Text = msg
                        Exit Sub
                    End Try
                Next

                Dim sqlQuery As String = sb.ToString
                'Remove the last comma
                sqlQuery = sqlQuery.Trim.TrimEnd(CChar(","))
                sqlQuery &= ";"
                database_operations.insertIntoDB(sqlQuery, conn)
            End If

            msg = Instituition.SetCompContactDetails(userId, locationId, phoneNum, faxNum, email, website)
            If msg.Equals("Success") Then
                mvRegisterCompany.SetActiveView(viewOtherDetails)
                register_user.setClassForTabButtons(btnGoToCompDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToContactDetails)
                btnSubmitScreen2.Visible = False
                btnToScreen3.Visible = True
                btnGoToCompDetails.Visible = True
                ViewState("s2") = True
            Else
                lblError2.Text = msg
            End If
        Else
            mvRegisterCompany.SetActiveView(viewOtherDetails)
            register_user.setClassForTabButtons(btnGoToCompDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToContactDetails)
        End If


    End Sub

    Protected Sub btnSubmitScreen3_Click(sender As Object, e As EventArgs)

        If ViewState("s3") = False Then

            index.setConn("institutions")
            Dim conn As MySqlConnection = Session("conn")
            Dim userId As String = "00000000000000000000000000000000000001"
            Dim locationId As String = Session("loc_id")
            Dim compId As String = Session("comp_id")
            Dim msg As String = String.Empty

            Dim taxCC As String = String.Empty
            Dim taxExpiryDate As Date = Date.Parse(txtTaxCertExpiryDate.Value)

            If upTaxClearCert.HasFile Then
                Try
                    'Dim id As String = Guid.NewGuid.ToString
                    'taxCC = ID.Substring(0, 9) & upTaxClearCert.FileName.ToString
                    taxCC = Guid.NewGuid.ToString
                    upTaxClearCert.SaveAs(Server.MapPath("../../Files/taxcc/" & taxCC))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    lblError3.Text = msg
                    Exit Sub
                End Try
            End If

            Dim beeCert As String = String.Empty
            If upBEECert.HasFile Then
                Try
                    'Dim id As String = Guid.NewGuid.ToString
                    'beeCert = ID.Substring(0, 9) & upBEECert.FileName.ToString
                    beeCert = Guid.NewGuid.ToString
                    upBEECert.SaveAs(Server.MapPath("../../Files/bee/" & beeCert))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    lblError3.Text = msg
                    Exit Sub
                End Try
            End If

            Dim healthSafetyCert As String = String.Empty
            If upHealthCert.HasFile Then
                Try

                    'Dim id As String = Guid.NewGuid.ToString
                    'healthSafetyCert = ID.Substring(0, 9) & upHealthCert.FileName.ToString
                    healthSafetyCert = Guid.NewGuid.ToString
                    upHealthCert.SaveAs(Server.MapPath("../../Files/health/" & healthSafetyCert))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    lblError3.Text = msg
                    Exit Sub
                End Try
            End If

            Dim auditedFinancials As String = String.Empty
            If upAuditedFinancials.HasFile Then
                Try
                    'Dim id As String = Guid.NewGuid.ToString
                    'auditedFinancials = ID.Substring(0, 9) & upAuditedFinancials.FileName.ToString
                    auditedFinancials = Guid.NewGuid.ToString
                    upAuditedFinancials.SaveAs(Server.MapPath("../../Files/audit/" & auditedFinancials))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    lblError3.Text = msg
                    Exit Sub
                End Try
            End If

            Dim csdReport As String = String.Empty
            If upCSDReport.HasFile Then
                Try
                    'Dim id As String = Guid.NewGuid.ToString
                    'csdReport = ID.Substring(0, 9) & upCSDReport.FileName.ToString
                    csdReport = Guid.NewGuid.ToString
                    upCSDReport.SaveAs(Server.MapPath("../../Files/csd/" & csdReport))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    lblError3.Text = msg
                    Exit Sub
                End Try
            End If

            msg = Instituition.SetCompDetails(userId, locationId, compId, taxCC, taxExpiryDate, beeCert, healthSafetyCert, auditedFinancials, csdReport)

            If msg.Equals("Success") Then
                mvRegisterCompany.SetActiveView(viewOtherDetailsCont)
                register_user.setClassForTabButtons(btnGoToCompContDetails, btnGoToAddressDetails, btnGoToContactDetails, btnGoToCompDetails)
                btnSubmitScreen3.Visible = False
                btnToScreen4.Visible = True
                btnGoToCompContDetails.Visible = True
                ViewState("s3") = True
            Else
                lblError3.Text = msg
            End If
        Else
            mvRegisterCompany.SetActiveView(viewOtherDetailsCont)
            register_user.setClassForTabButtons(btnGoToCompContDetails, btnGoToAddressDetails, btnGoToContactDetails, btnGoToCompDetails)
        End If



    End Sub

    Protected Sub btnSubmitScreen4_Click(sender As Object, e As EventArgs)

        If ViewState("s4") = False Then

            index.setConn("institutions")
            Dim conn As MySqlConnection = Session("conn")
            Dim userId As String = "00000000000000000000000000000000000001"
            Dim msg As String = String.Empty

            Dim locationId As String = Session("loc_id")
            Dim officeDescription As String = txtRegionalOfficeDescription.Value.ToString.Trim
            Dim companyLogo As String = String.Empty

            If upCompanyLogo.HasFile Then
                Try
                    Dim id As String = Guid.NewGuid.ToString
                    companyLogo = id.Substring(0, 9) & upCompanyLogo.FileName.ToString
                    upCompanyTour.SaveAs(Server.MapPath("../../Files/logo/" & companyLogo))
                Catch ex As Exception
                    msg = ex.Message.ToString
                    Exit Sub
                End Try
            End If

            Dim sb As New StringBuilder
            sb.Append("INSERT INTO institution_departments(DepartmentID,Location_ID) VALUES")
            For Each item In ddlDepartments.GetSelectedIndices
                sb.Append("(")
                sb.Append(locationId)
                sb.Append(",")
                sb.Append(item)
                sb.Append("),")
            Next
            Dim sqlQuery As String = sb.ToString
            'Remove the last comma
            sqlQuery = sqlQuery.Trim.TrimEnd(CChar(","))
            sqlQuery &= ";"
            database_operations.insertIntoDB(sqlQuery, conn)

            msg = Instituition.SetCompDetailsCont(userId, locationId, officeDescription, companyLogo)
            If msg.Equals("Success") Then
                mvRegisterCompany.SetActiveView(viewIsThereRegionalOffices)
                register_user.setClassForTabButtons(btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToCompDetails)
                btnSubmitScreen4.Visible = False
                btnToScreen4.Visible = True
                btnGoToCompContDetails.Visible = True
                ViewState("s4") = True
            Else
                lblError4.Text = msg
            End If
        Else
            mvRegisterCompany.SetActiveView(viewIsThereRegionalOffices)
            register_user.setClassForTabButtons(btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToCompDetails)
        End If


    End Sub

#End Region


#Region "Populate Dropdowns"

    Protected Sub ddlCountry_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim selectedValue As String = ddlCountry.SelectedItem.Value.ToString

        If Not selectedValue.Equals("0") Then

            Dim dt As DataTable = ValueObjects.getProvincesByCountryCode(selectedValue)

            ddlRegion.Items.Clear()
            ddlArea.Items.Clear()

            For row = 0 To dt.Rows.Count - 1
                ddlRegion.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("Id")))
            Next

            'ScriptManager.RegisterStartupScript(Page, "text/javascript", ClientID, "$('#ddlCountry').select2();", True)
            'Response.Write("$('#ddlCountry').select2();")


        End If

    End Sub

    Protected Sub ddlRegion_SelectedIndexChanged(sender As Object, e As EventArgs)

        Dim dt As DataTable = ValueObjects.getCitiesByProvinceId(ddlRegion.SelectedItem.Value.ToString)

        ddlArea.Items.Clear()
        For row = 0 To dt.Rows.Count - 1
            ddlArea.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("Id")))
        Next

    End Sub

    Protected Sub populateDdlDepartment()

        Dim dt As DataTable = ValueObjects.getDepartmentTypes()
        ddlDepartments.Items.Clear()

        For row = 0 To dt.Rows.Count - 1
            ddlDepartments.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("ID")))
        Next
    End Sub

#End Region


    Protected Sub btnRegisterHeadOffice_Click(sender As Object, e As EventArgs)
        'To Do
        'Register Head Office
        mvRegisterCompany.SetActiveView(viewIsThereRegionalOffices)
    End Sub

    Protected Sub btnAddDepartment_ServerClick(sender As Object, e As EventArgs)
        Dim userId As String = Session("user_id")
        ValueObjects.AddDepartment(userId, lblErrorDepartment, txtAddDepartment, ddlDepartments)
    End Sub


End Class