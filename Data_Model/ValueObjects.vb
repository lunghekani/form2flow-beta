Imports MySql.Data.MySqlClient
Public Class ValueObjects
    Inherits System.Web.UI.Page

    'Public Property lblError As Label
    Public Property txtFoo As TextBox
    Public Property txtBar As TextBox


#Region "Address"

    Public Shared Function getProvincesByCountryCode(CountryCode As String) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("Id"), New DataColumn("Name")})


        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("users"),
        .CommandText = "VO_Provinces_Get",
        .CommandType = CommandType.StoredProcedure
        }

        cmd.Parameters.AddWithValue("@country_ID_IN", CountryCode)

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim id As String = sqlReader.GetValue(0)
                Dim name As String = sqlReader.GetValue(2)

                dt.Rows.Add(id, name)
            End While
        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Function getCitiesByProvinceId(ProvinceId As String) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("Id"), New DataColumn("Name")})

        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("users"),
            .CommandText = "VO_Cities_Get",
            .CommandType = CommandType.StoredProcedure}

        cmd.Parameters.AddWithValue("@Province_ID_IN", ProvinceId)

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim id As Integer = sqlReader.GetValue(0)
                Dim name As String = sqlReader.GetValue(2)

                dt.Rows.Add(id, name)
            End While
        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Sub populateRegion(ddlCont As DropDownList, ddlReg As DropDownList, ddlAre As DropDownList)
        Dim selectedValue As String = ddlCont.SelectedItem.Value.ToString

        If Not selectedValue.Equals("0") Then

            Dim dt As DataTable = getProvincesByCountryCode(selectedValue)

            ddlReg.Items.Clear()
            ddlAre.Items.Clear()

            For row = 0 To dt.Rows.Count - 1
                ddlReg.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("Id")))
            Next

        End If
    End Sub

    Public Shared Sub populateArea(ddlReg As DropDownList, ddlAre As DropDownList)
        Dim dt As DataTable = getCitiesByProvinceId(ddlReg.SelectedItem.Value.ToString)

        ddlAre.Items.Clear()
        For row = 0 To dt.Rows.Count - 1
            ddlAre.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("Id")))
        Next
    End Sub



#End Region

#Region "Category"

    Public Shared Function insertCategory(ByVal compId As Integer, ByVal category As String, userId As String) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = index.setConn("lms"),
            .CommandText = "Categories_Create",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Modifiedby_ID_IN", userId)
            .AddWithValue("CategoryName_IN", category)
            .AddWithValue("CategoryDescription_IN", category)
            .AddWithValue("Institution_ID_IN", compId)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "1"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function getCategoriesPerInstitution(ByVal compId As String) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("lms"),
            .CommandText = "Categories_Create",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Institution_ID_IN", compId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim id As Integer = sqlReader.GetValue(0)
                Dim name As String = sqlReader.GetValue(2)
                dt.Rows.Add(id, name)
            End While
        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Function updateCategory(ByVal compId As Integer, ByVal categoryId As Integer, ByVal category As String, userId As String) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = index.setConn("lms"),
            .CommandText = "Categories_Update",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Modifiedby_ID_IN", userId)
            .AddWithValue("CategoryID_IN", categoryId)
            .AddWithValue("CategoryName_IN", category)
            .AddWithValue("Institution_ID_IN", compId)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "1"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

#End Region

#Region "Department"

    Public Shared Sub populateDdlDepartment(ByVal ddlDepartments As ListBox)

        Dim dt As DataTable = ValueObjects.getDepartmentTypes()
        ddlDepartments.Items.Clear()

        For row = 0 To dt.Rows.Count - 1
            ddlDepartments.Items.Add(New ListItem(dt.Rows(row).Item("Name"), dt.Rows(row).Item("ID")))
        Next
    End Sub


    Public Shared Sub AddDepartment(userId As String, lblError As Label, txtAddDepartment As HtmlInputText, ddlDepartments As ListBox)

        lblError.Visible = False
        Dim departmentName As String = txtAddDepartment.Value.ToString.Trim

        If ddlDepartments.Items.Count > 0 Then
            Dim item As ListItem = ddlDepartments.Items.FindByText(departmentName)
            If IsNothing(item) Then
                Dim msg As String = ValueObjects.insertDepartmentType(userId, departmentName)
                'Feedback to user
                If msg.Equals("1") Then
                    'lblErrorDepartment.Visible = True
                    'lblErrorDepartment.ForeColor = Drawing.Color.Green
                    'lblErrorDepartment.Text = departmentName & " added successfully."
                    populateDdlDepartment(ddlDepartments)
                    ddlDepartments.Items.FindByText(departmentName).Selected = True
                Else
                    lblError.Visible = True
                    lblError.ForeColor = Drawing.Color.Red
                    lblError.Text = msg
                End If
            Else
                'Feedback to user
                'lblErrorDepartment.Visible = True
                'lblErrorDepartment.ForeColor = Drawing.Color.Red
                'lblErrorDepartment.Text = "This department already exists."
                ddlDepartments.Items.FindByText(departmentName).Selected = True
                Exit Sub


            End If
        Else
            Dim msg As String = ValueObjects.insertDepartmentType(userId, departmentName)
            If msg.Equals("1") Then
                populateDdlDepartment(ddlDepartments)
                ddlDepartments.Items.FindByText(departmentName).Selected = True
            Else
                lblError.Visible = True
                lblError.ForeColor = Drawing.Color.Red
                lblError.Text = msg
            End If
        End If
    End Sub

    Public Shared Function insertDepartmentType(ByVal userId As String, ByVal departmentName As String) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = index.setConn("institutions"),
            .CommandText = "Institution_Department_Name_Create",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Modifiedby_ID_IN", userId)
            .AddWithValue("DepartmentName_IN", departmentName)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "1"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function getDepartmentTypes() As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("institutions"),
            .CommandText = "Institution_Department_Names_Get",
            .CommandType = CommandType.StoredProcedure
        }

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim id As Integer = sqlReader.GetValue(0)
                Dim name As String = sqlReader.GetValue(1)
                dt.Rows.Add(id, name)
            End While
        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Function getDepartmentsPerInstitution(ByVal branchId As Integer) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})


        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("institutions"),
            .CommandText = "Institution_Departments_Get",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Location_ID_IN", branchId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim locationId As Integer = sqlReader.GetValue(0)
                Dim name As String = sqlReader.GetValue(1)

                dt.Rows.Add(locationId, name)
            End While
        End If

        sqlReader.Close()

        Return dt
    End Function


#End Region

#Region "Position - Job Title"

    Public Shared Function insertPosition(ByVal position As String, positionDescription As String) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = index.setConn("institutions"),
            .CommandText = "VO_Positions_Create",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("JobTitle_IN", position)
            .AddWithValue("JobDescription_IN", positionDescription)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "1"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function getPositions() As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("institutions"),
            .CommandText = "VO_Positions_Get_ALL",
            .CommandType = CommandType.StoredProcedure
        }

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim id As Integer = sqlReader.GetValue(0)
                Dim name As String = sqlReader.GetValue(1)
                dt.Rows.Add(id, name)
            End While
        End If

        sqlReader.Close()

        Return dt
    End Function


#End Region

#Region "Branch"

    Public Shared Function getBranches(ByVal companyId As Integer) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("institutions"),
            .CommandText = "institutions.Institution_Sites_Get",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Institution_ID_IN", companyId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim locationId As Integer = sqlReader.GetValue(0)
                Dim headOffice As Integer = sqlReader.GetValue(2)
                Dim regionalOffice As Integer = sqlReader.GetValue(3)
                Dim branchOffice As Integer = sqlReader.GetValue(4)
                Dim name As String = sqlReader.GetValue(5)

                If headOffice.Equals(1) Then
                    name &= " - Head Office"
                ElseIf regionalOffice.Equals(1) Then
                    name &= " - Regional Office"
                ElseIf branchOffice.Equals(1) Then
                    name &= " - Branch"
                End If

                dt.Rows.Add(locationId, name)
            End While
        End If

        sqlReader.Close()

        Return dt
    End Function


#End Region

#Region "Downoad File"

    Public Sub downloadFile(fileName As String)

        'Get the attached file type
        Dim index As Integer = fileName.LastIndexOf(".")
        Dim fileType As String = fileName.Substring(index + 1)

        Dim filePath As String = Server.MapPath("../Files/" & fileName)
        Dim fileToDownload As New System.IO.FileInfo(Server.MapPath("../Files/" & fileName))
        'To Do
        'Currently downloads a corrupt file if the file is missing.
        Try
            Response.Clear()
            Response.AppendHeader("content-disposition", "attachment; filename=" & fileName)
            Dim contentType As String = DataModel.getFileType(fileType)
            Response.ContentType = contentType
        Catch ex As Exception
            'Session("from_screen") = "patient_profile"
            'Session("lblTitle") = "Error"
            'Session("lblBody") = ex.ToString()
            'Response.Redirect("sys_messages.aspx")
        End Try

        Response.WriteFile(filePath)
        Response.End()
    End Sub

#End Region

End Class
