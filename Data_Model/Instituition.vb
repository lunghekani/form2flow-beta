Imports System.IO
Imports MySql.Data.MySqlClient

Public Class Instituition
    Inherits Address
    Public Property name As String
    Public Property id As String
    Public Property regNum As String
    Public Property vatNum As String
    Public Property description As String
    Public Property departments As String()
    Public Property logo As String

    Public Property landline As String
    Public Property mobile As String
    Public Property fax As String

    Public email As String
    Public website As String

    Public Property taxClearanceCert As File
    Public Property taxCCDate As Date
    Public Property beeCert As File
    Public Property healthSafetyCert As File
    Public Property auditedFinancials As File
    Public Property csdReport As File

#Region "Register-Company"

    Public Shared Function SetCompAddressDetails(ByVal userID As String, ByVal compName As String, ByVal headOffice As Integer,
                                           ByVal regional As Integer, branch As Integer,
                                           ByVal address As String, countryCode As String, provinceID As Integer, cityID As Integer,
                                           ByVal gps As String, ByVal registrationNum As String, ByVal VATNum As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Company_Registration_Address_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", userID)
            .Parameters.AddWithValue("@InstitutionName_IN", compName)
            .Parameters.AddWithValue("@HeadOffice_IN", headOffice)
            .Parameters.AddWithValue("@RegionalOffice_IN", regional)
            .Parameters.AddWithValue("@Branch_IN", branch)
            .Parameters.AddWithValue("@PhysicalAddress_IN", address)
            .Parameters.AddWithValue("@Country_ID_IN", countryCode)
            .Parameters.AddWithValue("@Province_ID_IN", provinceID)
            .Parameters.AddWithValue("@City_ID_IN", cityID)
            .Parameters.AddWithValue("@Coordinates_IN", gps)
            .Parameters.AddWithValue("@RegistrationNumber_IN", registrationNum)
            .Parameters.AddWithValue("@VATNumber_IN", VATNum)

            .Parameters.Add("@Institution_ID_OUT", MySqlDbType.Int32)
            .Parameters.Add("@Location_ID_OUT", MySqlDbType.Int32)
            .Parameters("@Institution_ID_OUT").Direction = ParameterDirection.Output
            .Parameters("@Location_ID_OUT").Direction = ParameterDirection.Output
        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()
            Dim compID As Integer = Integer.Parse(cmd.Parameters("@Institution_ID_OUT").Value)
            Dim locationID As Integer = Integer.Parse(cmd.Parameters("@Location_ID_OUT").Value)


            'Instantiate Session variables
            HttpContext.Current.Session("comp_id") = compID
            HttpContext.Current.Session("loc_id") = locationID

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

    Public Shared Function SetCompContactDetails(ByVal userID As String, ByVal locationID As String, ByVal telNum As String,
                                           ByVal faxNum As String, email As String, ByVal website As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Company_Registration_Contact_Details_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", userID)
            .Parameters.AddWithValue("@Location_ID_IN", locationID)
            .Parameters.AddWithValue("@PhoneNumber_IN", telNum)
            .Parameters.AddWithValue("@DialingCode_IN", "011")
            If faxNum.Equals("NULL") Then
                .Parameters.AddWithValue("@FaxNumber_IN", DBNull.Value)
            Else
                .Parameters.AddWithValue("@FaxNumber_IN", faxNum)
            End If
            .Parameters.AddWithValue("@EmailAddress_IN", email)
            If website.Equals("NULL") Then
                .Parameters.AddWithValue("@WebsiteURL_IN", DBNull.Value)
            Else
                .Parameters.AddWithValue("@WebsiteURL_IN", website)
            End If


        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()


            'Instantiate Session variables
            'HttpContext.Current.Session("comp_id") = compID
            'HttpContext.Current.Session("loc_id") = locationID

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

    Public Shared Function SetCompDetails(ByVal userID As String, ByVal locationID As String, ByVal compID As String, ByVal taxCC As String,
                                           ByVal taxCCExpDate As Date, bee As String, ByVal healthSafety As String,
                                          ByVal auditFinancials As String, csdReport As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Company_Registration_Company_Details_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", userID)
            .Parameters.AddWithValue("@Location_ID_IN", locationID)
            .Parameters.AddWithValue("@Institution_ID_IN", compID)
            .Parameters.AddWithValue("@TAX_FileName_IN", taxCC)
            .Parameters.AddWithValue("@TAX_FilePath_IN", "Files/taxcc/" & taxCC)
            .Parameters.AddWithValue("@TAX_ExiryDate_IN", taxCCExpDate)
            .Parameters.AddWithValue("@BEE_FileName_IN", bee)
            .Parameters.AddWithValue("@BEE_FilePath_IN", "Files/bee/" & bee)
            .Parameters.AddWithValue("@BEE_ExiryDate_IN", DateTime.Now)
            .Parameters.AddWithValue("@AF_FileName_IN", auditFinancials)
            .Parameters.AddWithValue("@AF_FilePath_IN", "Files/audit/" & auditFinancials)
            .Parameters.AddWithValue("@AF_ExiryDate_IN", DateTime.Now)
            .Parameters.AddWithValue("@HS_FileName_IN", healthSafety)
            .Parameters.AddWithValue("@HS_FilePath_IN", "Files/health/" & healthSafety)
            .Parameters.AddWithValue("@HS_ExiryDate_IN", DateTime.Now)
            .Parameters.AddWithValue("@CSD_FileName_IN", csdReport)
            .Parameters.AddWithValue("@CSD_FilePath_IN", "Files/csd/" & csdReport)
            .Parameters.AddWithValue("@CSD_ExiryDate_IN", DateTime.Now)

        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()


            'Instantiate Session variables
            HttpContext.Current.Session("comp_id") = compID
            HttpContext.Current.Session("loc_id") = locationID

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

    Public Shared Function SetCompDetailsCont(ByVal userID As String, ByVal locationID As String, ByVal description As String,
                                           ByVal logoPath As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Company_Registration_Company_Details_Cont_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", userID)
            .Parameters.AddWithValue("@Location_ID_IN", locationID)
            .Parameters.AddWithValue("@Description_IN", description)
            .Parameters.AddWithValue("@LogoPath_IN", logoPath)

        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()


            'Instantiate Session variables
            'HttpContext.Current.Session("comp_id") = compID
            'HttpContext.Current.Session("loc_id") = locationID

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

#End Region

#Region "List-Companies"

    Public Shared Function getListOfCompanies() As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim conn As MySqlConnection = index.setConn("institutions")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "Institution_Names_Get_ALL",
        .CommandType = CommandType.StoredProcedure
        }

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try

            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim id As String = Convert.ToString(sqlReader.GetValue(0))
                    Dim name As String = Convert.ToString(sqlReader.GetValue(1))
                    'Dim description As String = Convert.ToString(sqlReader.GetValue(2))

                    dt.Rows.Add(id, name)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add("Error: " & ex.Message.ToString)
        Finally
            sqlReader.Close()
        End Try

        Return dt
    End Function

#End Region

#Region "View-Company"

    Public Shared Function getCompAddressDetails(ByVal companyId As String, locationId As Integer) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(9) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("Type"), New DataColumn("Address"),
                            New DataColumn("CountryId"), New DataColumn("ProvinceId"), New DataColumn("CityId"), New DataColumn("GPS"),
                            New DataColumn("RegNum"), New DataColumn("VATNum")})

        Dim conn As MySqlConnection = index.setConn("institutions")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "View_Company_Registration_Address",
        .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Institution_ID_IN", companyId)
            .AddWithValue("Location_ID_IN", locationId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try

            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim id As Integer = companyId
                    Dim name As String = Convert.ToString(sqlReader.GetValue(0))
                    Dim type As String = String.Empty
                    Dim address As String = Convert.ToString(sqlReader.GetValue(4))
                    Dim countryId As String = Convert.ToString(sqlReader.GetValue(5))
                    Dim provinceId As Integer = Convert.ToInt32(sqlReader.GetValue(6))
                    Dim cityId As Integer = Convert.ToInt32(sqlReader.GetValue(7))
                    Dim gps As String = Convert.ToString(sqlReader.GetValue(8))
                    Dim regNum As String = Convert.ToString(sqlReader.GetValue(9))
                    Dim vatNum As String = Convert.ToString(sqlReader.GetValue(10))

                    dt.Rows.Add(id, name, type, address, countryId, provinceId, cityId, gps, regNum, vatNum)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add("Error: " & ex.Message.ToString)
        Finally
            sqlReader.Close()
        End Try

        Return dt
    End Function

    Public Shared Function getCompContactDetails(ByVal locationId As Integer) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("PhoneNum"), New DataColumn("FaxNum"), New DataColumn("Email"), New DataColumn("Website")
                            })

        Dim conn As MySqlConnection = index.setConn("institutions")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "View_Company_Registration_Contact_Details",
        .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Location_ID_IN", locationId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try

            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim phoneNum As String = Convert.ToString(sqlReader.GetValue(0))
                    Dim faxNum As String = Convert.ToString(sqlReader.GetValue(2))
                    Dim email As String = Convert.ToString(sqlReader.GetValue(3))
                    Dim website As String = Convert.ToString(sqlReader.GetValue(4))

                    dt.Rows.Add(phoneNum, faxNum, email, website)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add("Error: " & ex.Message.ToString)
        Finally
            sqlReader.Close()
        End Try

        Return dt
    End Function

    Public Shared Function getCompTourFiles(ByVal instId As Integer, ByVal locationId As Integer)
        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(2) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("UploadedOn")})

        Dim conn As MySqlConnection = index.setConn("institutions")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "Institution_Site_Files_Get",
        .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Location_ID_IN", locationId)
            .AddWithValue("Institution_ID_IN", instId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try

            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim id As String = Convert.ToString(sqlReader.GetValue(0))
                    Dim name As String = Convert.ToString(sqlReader.GetValue(1))
                    Dim uploadedDate As String = Convert.ToString(sqlReader.GetValue(2))

                    dt.Rows.Add(id, name, uploadedDate)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add("Error: " & ex.Message.ToString)
        Finally
            sqlReader.Close()
        End Try

        Return dt
    End Function

    Public Shared Function getCompDepartments(ByVal locationId As Integer)
        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim conn As MySqlConnection = index.setConn("institutions")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "Institution_Site_Departments_Get",
        .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Location_ID_IN", locationId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try

            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim id As String = Convert.ToString(sqlReader.GetValue(0))
                    Dim name As String = Convert.ToString(sqlReader.GetValue(1))

                    dt.Rows.Add(id, name)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add("Error: " & ex.Message.ToString)
        Finally
            sqlReader.Close()
        End Try

        Return dt
    End Function

    Public Shared Function getCompDetails(ByVal locationId As Integer) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(10) {New DataColumn("TaxId"), New DataColumn("TaxName"), New DataColumn("TaxExpDate"),
                            New DataColumn("BEEId"), New DataColumn("BEEName"),
                            New DataColumn("AFId"), New DataColumn("AFName"),
                            New DataColumn("HSId"), New DataColumn("HSName"),
                            New DataColumn("CSDId"), New DataColumn("CSDName")})


        Dim conn As MySqlConnection = index.setConn("institutions")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "View_Company_Registration_Company_Detail",
        .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Location_ID_IN", locationId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try

            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim taxId As String = Convert.ToString(sqlReader.GetValue(0))
                    Dim taxName As String = Convert.ToString(sqlReader.GetValue(1))
                    Dim taxExpDate As DateTime = Convert.ToDateTime(sqlReader.GetValue(4))
                    Dim beeId As String = Convert.ToString(sqlReader.GetValue(5))
                    Dim beeName As String = Convert.ToString(sqlReader.GetValue(6))
                    Dim afId As String = Convert.ToString(sqlReader.GetValue(10))
                    Dim afName As String = Convert.ToString(sqlReader.GetValue(11))
                    Dim hsId As String = Convert.ToString(sqlReader.GetValue(15))
                    Dim hsName As String = Convert.ToString(sqlReader.GetValue(16))
                    Dim csdId As String = Convert.ToString(sqlReader.GetValue(20))
                    Dim csdName As String = Convert.ToString(sqlReader.GetValue(21))

                    dt.Rows.Add(taxId, taxName, taxExpDate,
                                beeId, beeName, afId, afName, hsId, hsName, csdId, csdName)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add("Error: " & ex.Message.ToString)
        Finally
            sqlReader.Close()
        End Try

        Return dt
    End Function

    Public Shared Function getCompDetailsCont(ByVal locationId As Integer) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("Description"), New DataColumn("Logo")})

        Dim conn As MySqlConnection = index.setConn("institutions")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "View_Company_Registration_Company_Details_Cont",
        .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Location_ID_IN", locationId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try

            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim description As String = Convert.ToString(sqlReader.GetValue(0))
                    Dim logo As String = Convert.ToString(sqlReader.GetValue(1))

                    dt.Rows.Add(description, logo)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add("Error: " & ex.Message.ToString)
        Finally
            sqlReader.Close()
        End Try

        Return dt
    End Function

    ' TO DO
    ' MISSING: Get list of departments
    ' Get Company Tours Files

#End Region


#Region "Register-Branch"

    Public Shared Function SetBranchAddressDetails(ByVal userID As String, ByVal instId As Integer, ByVal branchName As String, ByVal headOffice As Integer,
                                           ByVal regional As Integer, branch As Integer,
                                           ByVal address As String, countryCode As String, provinceID As Integer, cityID As Integer,
                                           ByVal gps As String, ByVal registrationNum As String, ByVal VATNum As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Branch_Registration_Address_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", userID)
            .Parameters.AddWithValue("@Institution_ID_IN", instId)
            .Parameters.AddWithValue("@BranchName_IN", branchName)
            .Parameters.AddWithValue("@HeadOffice_IN", headOffice)
            .Parameters.AddWithValue("@RegionalOffice_IN", regional)
            .Parameters.AddWithValue("@Branch_IN", branch)
            .Parameters.AddWithValue("@PhysicalAddress_IN", address)
            .Parameters.AddWithValue("@Country_ID_IN", countryCode)
            .Parameters.AddWithValue("@Province_ID_IN", provinceID)
            .Parameters.AddWithValue("@City_ID_IN", cityID)
            .Parameters.AddWithValue("@Coordinates_IN", gps)
            .Parameters.AddWithValue("@RegistrationNumber_IN", registrationNum)
            .Parameters.AddWithValue("@VATNumber_IN", VATNum)

            .Parameters.Add("@Location_ID_OUT", MySqlDbType.Int32)
            .Parameters("@Location_ID_OUT").Direction = ParameterDirection.Output
        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()
            Dim locationID As Integer = Integer.Parse(cmd.Parameters("@Location_ID_OUT").Value)

            'Instantiate Session variables
            'HttpContext.Current.Session("comp_id") = compID
            HttpContext.Current.Session("loc_id") = locationID

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

    Public Shared Function SetBranchContactDetails(ByVal userID As String, ByVal locationID As String, ByVal telNum As String,
                                           ByVal faxNum As String, email As String, ByVal website As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Company_Registration_Contact_Details_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", userID)
            .Parameters.AddWithValue("@Location_ID_IN", locationID)
            .Parameters.AddWithValue("@PhoneNumber_IN", telNum)
            .Parameters.AddWithValue("@DialingCode_IN", "011")
            If faxNum.Equals("NULL") Then
                .Parameters.AddWithValue("@FaxNumber_IN", DBNull.Value)
            Else
                .Parameters.AddWithValue("@FaxNumber_IN", faxNum)
            End If
            .Parameters.AddWithValue("@EmailAddress_IN", email)
            If website.Equals("NULL") Then
                .Parameters.AddWithValue("@WebsiteURL_IN", DBNull.Value)
            Else
                .Parameters.AddWithValue("@WebsiteURL_IN", website)
            End If


        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()


            'Instantiate Session variables
            'HttpContext.Current.Session("comp_id") = compID
            'HttpContext.Current.Session("loc_id") = locationID

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

    Public Shared Function SetBranchDetails(ByVal userID As String, ByVal locationID As String, ByVal compID As String, ByVal taxCC As String,
                                           ByVal taxCCExpDate As Date, bee As String, ByVal healthSafety As String,
                                          ByVal auditFinancials As String, csdReport As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Company_Registration_Company_Details_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", userID)
            .Parameters.AddWithValue("@Location_ID_IN", locationID)
            .Parameters.AddWithValue("@Institution_ID_IN", compID)
            .Parameters.AddWithValue("@TAX_FileName_IN", taxCC)
            .Parameters.AddWithValue("@TAX_FilePath_IN", "Files/taxcc/" & taxCC)
            .Parameters.AddWithValue("@TAX_ExiryDate_IN", taxCCExpDate)
            .Parameters.AddWithValue("@BEE_FileName_IN", bee)
            .Parameters.AddWithValue("@BEE_FilePath_IN", "Files/bee/" & bee)
            .Parameters.AddWithValue("@BEE_ExiryDate_IN", DateTime.Now)
            .Parameters.AddWithValue("@AF_FileName_IN", auditFinancials)
            .Parameters.AddWithValue("@AF_FilePath_IN", "Files/audit/" & auditFinancials)
            .Parameters.AddWithValue("@AF_ExiryDate_IN", DateTime.Now)
            .Parameters.AddWithValue("@HS_FileName_IN", healthSafety)
            .Parameters.AddWithValue("@HS_FilePath_IN", "Files/health/" & healthSafety)
            .Parameters.AddWithValue("@HS_ExiryDate_IN", DateTime.Now)
            .Parameters.AddWithValue("@CSD_FileName_IN", csdReport)
            .Parameters.AddWithValue("@CSD_FilePath_IN", "Files/csd/" & csdReport)
            .Parameters.AddWithValue("@CSD_ExiryDate_IN", DateTime.Now)

        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()


            'Instantiate Session variables
            'HttpContext.Current.Session("comp_id") = compID
            'HttpContext.Current.Session("loc_id") = locationID

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

    Public Shared Function SetBranchDetailsCont(ByVal userID As String, ByVal locationID As String, ByVal description As String,
                                           ByVal logoPath As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Company_Registration_Company_Details_Cont_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", userID)
            .Parameters.AddWithValue("@Location_ID_IN", locationID)
            .Parameters.AddWithValue("@Description_IN", description)
            .Parameters.AddWithValue("@LogoPath_IN", logoPath)

        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()


            'Instantiate Session variables
            'HttpContext.Current.Session("comp_id") = compID
            'HttpContext.Current.Session("loc_id") = locationID

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

#End Region

#Region "List-Branches"

    Public Shared Function getListOfBranchesPerInstitution(ByVal instId As Integer) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(2) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("Description")})

        Dim conn As MySqlConnection = index.setConn("institutions")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "View_Institution_Branch_List",
        .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("@Institution_ID_IN", instId)
        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try

            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim id As String = Convert.ToString(sqlReader.GetValue(0))
                    Dim name As String = Convert.ToString(sqlReader.GetValue(1))
                    Dim description As String = Convert.ToString(sqlReader.GetValue(2))

                    dt.Rows.Add(id, name, description)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add("Error: " & ex.Message.ToString)
        Finally
            sqlReader.Close()
        End Try

        Return dt
    End Function

#End Region


End Class
