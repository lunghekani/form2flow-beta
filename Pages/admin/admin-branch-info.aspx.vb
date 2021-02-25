Imports MySql.Data.MySqlClient

Public Class admin_branch_info
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            mvRegisterCompany.SetActiveView(viewAddressDetails)
            register_user.setClassForTabButtons(btnGoToAddressDetails, btnGoToContactDetails, btnGoToCompContDetails, btnGoToCompDetails)
            getAddressDetaills()
            'mockData()
        End If
    End Sub

    Protected Sub mockData()
        txtCompName.Value = "Reevell Enterprise Development"
        txtCompRegNum.Value = "13049582"
        txtCompVATNum.Value = "44779222"
        txtAddress.Value = "Corner of R512 and N4 Road, Hartbeespoort"
        txtGPS.Value = "-26.270759299999998,28.1122679"



        ddlCountry.Items.FindByValue("ZAF").Selected = True
        ddlRegion.Items.Add("North West")
        ddlArea.Items.Add("Hartbeespoort")

        txtTel.Value = "+27 83 282 6684"
        txtFax.Value = "011 837 2020"
        txtEmail.Value = "dave@red-za.com"
        txtWebsite.Value = "red-za.com"
        txtRegionalOfficeDescription.Value = ""




    End Sub

#Region "Navigational Buttons"

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-branch-list.aspx")
    End Sub

    Protected Sub btnBackToScreen1_Click(sender As Object, e As EventArgs)
        mvRegisterCompany.SetActiveView(viewAddressDetails)
        register_user.setClassForTabButtons(btnGoToAddressDetails, btnGoToContactDetails, btnGoToCompContDetails, btnGoToCompDetails)
        getAddressDetaills()
    End Sub

    Protected Sub btnToScreen2_Click(sender As Object, e As EventArgs)
        mvRegisterCompany.SetActiveView(viewContactDetails)
        register_user.setClassForTabButtons(btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToCompDetails)
        getContactDetails()
    End Sub

    Protected Sub btnToScreen3_Click(sender As Object, e As EventArgs)
        mvRegisterCompany.SetActiveView(viewOtherDetails)
        getOtherDetails()
        register_user.setClassForTabButtons(btnGoToCompDetails, btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails)
    End Sub

    Protected Sub btnToScreen4_Click(sender As Object, e As EventArgs)
        mvRegisterCompany.SetActiveView(viewOtherDetailsCont)
        ValueObjects.populateDdlDepartment(ddlDepartments)
        getOtherDetailsCont()
        register_user.setClassForTabButtons(btnGoToCompContDetails, btnGoToAddressDetails, btnGoToContactDetails, btnGoToCompDetails)
    End Sub

#End Region

#Region "Submit Buttons"

    Protected Sub btnSubmitScreen1_Click(sender As Object, e As EventArgs)

        lblError1.ForeColor = Drawing.Color.Green
        lblError1.Text = "Changes saved succesfully."

        'index.setConn("institutions")
        'Dim conn As MySqlConnection = Session("conn")
        'Dim userId As String = "00000000000000000000000000000000000001"
        'Dim vatNum As String = txtCompVATNum.Value.ToString.Trim
        'Dim compName As String = txtCompName.Value.ToString.Trim
        'Dim compRegNum As String = txtCompRegNum.Value.ToString.Trim
        'Dim companyExists As Boolean = database_operations.doesFieldExistInTable("RegistrationNumber", compRegNum, "institution_reg_no", conn)
        ''Dim compNameExists As Boolean = database_operations.doesFieldExistInTable("RegistrationNumber", compRegNum, "institution_reg_no", Session("conn"))
        'Dim compVATNumExists As Boolean = database_operations.doesFieldExistInTable("RegistrationNumber", compRegNum, "institution_reg_no", conn)
        'If companyExists = True Then
        '    lblError1.Visible = True
        '    lblError1.ForeColor = Drawing.Color.Red
        '    lblError1.Text = "This company has already been registered."
        '    Exit Sub
        'Else
        '    Dim address As String = txtAddress.Value.ToString.Trim
        '    Dim countryCode As String = ddlCountry.SelectedValue.ToString.Trim
        '    Dim regionId As String = ddlRegion.SelectedValue.ToString.Trim
        '    Dim areaId As String = ddlArea.SelectedValue.ToString.Trim
        '    Dim gps As String = txtGPS.Value.ToString.Trim

        '    Dim msg As String = Instituition.SetCompAddressDetails(userId, compName, 1, 0, 0,
        '                                                            address, countryCode, regionId, areaId, gps, compRegNum, vatNum)
        '    If msg.Equals("Success") Then
        '        mvRegisterCompany.SetActiveView(viewContactDetails)
        '        register_user.setClassForTabButtons(btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToCompDetails)
        '        btnSubmitScreen2.Visible = False
        '    Else
        '        lblError2.Text = msg
        '    End If

        'End If
    End Sub

    Protected Sub btnSubmitScreen2_Click(sender As Object, e As EventArgs)
        lblError2.ForeColor = Drawing.Color.Green
        lblError2.Text = "Changes saved successfully."
        'Dim userId As String = "00000000000000000000000000000000000001"
        'Dim msg As String = String.Empty

        'Dim locationId As String = Session("loc_id")
        'Dim phoneNum As String = txtTel.Value.ToString.Trim
        'Dim faxNum As String = txtFax.Value.ToString.Trim
        'If String.IsNullOrEmpty(faxNum) Then
        '    faxNum = "NULL"
        'End If
        'Dim email As String = txtEmail.Value.ToString.Trim
        'Dim website As String = txtWebsite.Value.ToString.Trim
        'If String.IsNullOrEmpty(website) Then
        '    website = "NULL"
        'End If

        'If upCompanyTour.HasFile Then

        '    For Each file In upCompanyTour.PostedFiles
        '        Try
        '            Dim FileName As String = ID.Substring(0, 9) & file.FileName.ToString
        '            upCompanyTour.SaveAs(Server.MapPath("../../Files/tour/" & FileName))
        '        Catch ex As Exception
        '            msg = ex.Message.ToString
        '            Exit Sub
        '        End Try
        '    Next

        'End If

        'msg = Instituition.SetCompContactDetails(userId, locationId, phoneNum, faxNum, email, website)
        'If msg.Equals("Success") Then
        mvRegisterCompany.SetActiveView(viewContactDetails)
        register_user.setClassForTabButtons(btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails, btnGoToCompDetails)
        '    btnSubmitScreen2.Visible = False
        '    lblError2.Text = msg
        'End If
    End Sub

    Protected Sub btnSubmitScreen3_Click(sender As Object, e As EventArgs)
        lblError3.ForeColor = Drawing.Color.Green
        lblError3.Text = "Changes saved successfully."
        'mvRegisterCompany.SetActiveView(viewOtherDetails)
        'register_user.setClassForTabButtons(btnGoToCompDetails, btnGoToContactDetails, btnGoToAddressDetails, btnGoToCompContDetails)
    End Sub

    Protected Sub btnSubmitScreen4_Click(sender As Object, e As EventArgs)
        lblError4.ForeColor = Drawing.Color.Green
        lblError4.Text = "Changes saved successfully."
        ' mvRegisterCompany.SetActiveView(viewOtherDetailsCont)
        'register_user.setClassForTabButtons(btnGoToCompContDetails, btnGoToAddressDetails, btnGoToContactDetails, btnGoToCompDetails)
    End Sub

    Protected Sub btnAddDepartment_ServerClick(sender As Object, e As EventArgs)

        Dim userId As String = Session("user_id")
        ValueObjects.AddDepartment(userId, lblErrorDepartment, txtAddDepartment, ddlDepartments)

    End Sub

#End Region

#Region "Popuate Screens"

    Protected Sub getAddressDetaills()
        Dim compId As String = Session("selected_comp_id")
        Dim locationId As Integer = Session("selected_loc_id")
        Dim dt As DataTable = Instituition.getCompAddressDetails(compId, locationId)

        txtCompName.Value = dt.Rows(0).Item("Name").ToString
        txtCompRegNum.Value = dt.Rows(0).Item("RegNum").ToString
        txtCompVATNum.Value = dt.Rows(0).Item("VATNum").ToString
        txtAddress.Value = dt.Rows(0).Item("Address").ToString
        txtGPS.Value = dt.Rows(0).Item("GPS").ToString

        'Clear Selection
        ddlCountry.ClearSelection()
        ddlRegion.ClearSelection()
        ddlArea.ClearSelection()

        ddlCountry.Items.FindByValue(dt.Rows(0).Item("CountryId").ToString).Selected = True
        ValueObjects.populateRegion(ddlCountry, ddlRegion, ddlArea)
        ddlRegion.Items.FindByValue(dt.Rows(0).Item("ProvinceId").ToString).Selected = True
        ValueObjects.populateArea(ddlRegion, ddlArea)
        ddlArea.Items.FindByValue(dt.Rows(0).Item("CityId").ToString).Selected = True

    End Sub

    Protected Sub getContactDetails()

        Dim locationId As Integer = Session("selected_loc_id")
        Dim dt As DataTable = Instituition.getCompContactDetails(locationId)
        txtTel.Value = dt.Rows(0).Item("PhoneNum").ToString
        txtFax.Value = dt.Rows(0).Item("FaxNum").ToString
        txtEmail.Value = dt.Rows(0).Item("Email").ToString
        txtWebsite.Value = dt.Rows(0).Item("Website").ToString

        bindGridView()

    End Sub

    Protected Sub getOtherDetails()

        Dim locationId As Integer = Session("selected_loc_id")
        Dim dt As DataTable = Instituition.getCompDetails(locationId)
        txtTaxCertExpiryDate.Value = dt.Rows(0).Item("TaxExpDate").ToString
        'txtFax.Value = dt.Rows(0).Item("FaxNum").ToString
        'txtEmail.Value = dt.Rows(0).Item("Email").ToString
        'txtWebsite.Value = dt.Rows(0).Item("Website").ToString

    End Sub

    Protected Sub getOtherDetailsCont()

        Dim locationId As Integer = Session("selected_loc_id")
        Dim dt As DataTable = Instituition.getCompDetailsCont(locationId)
        txtRegionalOfficeDescription.Value = dt.Rows(0).Item("Description").ToString

        Dim dtDepts As DataTable = Instituition.getCompDepartments(locationId)

        For row = 0 To dtDepts.Rows.Count - 1
            ddlDepartments.Items.FindByValue(dtDepts.Rows(row).Item("ID")).Selected = True
        Next

    End Sub

#End Region

#Region "GridView"

    Protected Sub bindGridView()
        Dim locationId As Integer = Integer.Parse(Session("selected_loc_id"))
        Dim compId As Integer = Integer.Parse(Session("selected_comp_id"))
        Dim dt As DataTable = Instituition.getCompTourFiles(compId, locationId)

        gvCompanyTour.DataSource = dt
        gvCompanyTour.DataBind()

    End Sub

    Protected Sub gvCompanyTour_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    End Sub

    Protected Sub gvCompanyTour_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim selectedId As Integer = e.CommandArgument
        If e.CommandName = "Edit" Then

            Dim locId As String = gvCompanyTour.Rows(selectedId).Cells(1).Text
            Session("selected_loc_id") = locId
            Response.Redirect("admin-branch-info.aspx")

        End If
    End Sub

    Protected Sub gvCompanyTour_RowDataBound(sender As Object, e As GridViewRowEventArgs)

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

    Protected Sub btnDownloadCompTourFiles_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnDownloadCompLogo_ServerClick(sender As Object, e As EventArgs)

    End Sub

End Class