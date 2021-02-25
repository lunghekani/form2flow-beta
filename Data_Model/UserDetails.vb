Imports System.IO
Imports MySql.Data.MySqlClient

Public Class UserDetails
    Public Property username As String
    Public Property firstName As String
    Public Property lastName As String
    Public Property emailAddress As String
    Public Property phoneNum As String
    Public Property cv As File
    Public Property avatar As String


    Public position

#Region "Register-User"

    Public Shared Function SetUserAccDetails(ByVal modifiedByID As String, ByVal userID As String, ByVal username As String,
                                             ByVal firstName As String, ByVal lastName As String, ByVal maidenName As String,
                                           ByVal contactNum As String,
                                           ByVal email As String, cv As String, avatar As String) As String

        Dim password As String = genfunctions.genPassword().Trim
        Dim encrypted_pass As String = genfunctions.stringToMD5(password)

        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("users")
            .CommandText = "Register_User_Account"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", modifiedByID)
            .Parameters.AddWithValue("@UserID_IN", userID)
            .Parameters.AddWithValue("@Password_IN", encrypted_pass)
            .Parameters.AddWithValue("@UserName_IN", username)
            .Parameters.AddWithValue("@UserFirstName_IN", firstName)
            .Parameters.AddWithValue("@UserLastName_IN", lastName)
            .Parameters.AddWithValue("@UserMaidenName_IN", maidenName)
            .Parameters.AddWithValue("@ContactNumber_IN", contactNum)
            '.Parameters.AddWithValue("@ContactType_ID_IN", contactType)
            .Parameters.AddWithValue("@EmailAddress_IN", email)
            .Parameters.AddWithValue("@CV_FileName_IN", cv)
            '.Parameters.AddWithValue("@CV_FilePath_IN", "Files/cv/")
            .Parameters.AddWithValue("@Avatar_File_Path_IN", avatar)

        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()
            HttpContext.Current.Session("new_user_id") = userID
            'Instantiate Session variables

            'Email new user password
            genfunctions.sendRegistrationEmail(firstName, lastName, username, password, email)

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

    Public Shared Function SetUserJobDetails(ByVal modifiedById As String, ByVal userId As String,
                                             ByVal compId As String, ByVal deptId As String, ByVal locationId As String,
                                             ByVal startDate As DateTime, ByVal positionId As String,
                                             ByVal profile As String, ByVal appraisal As String, ByVal pdp As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("users")
            .CommandText = "Register_User_Job_Details"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", modifiedById)
            .Parameters.AddWithValue("@Institution_ID_IN", compId)
            .Parameters.AddWithValue("@DepartmentID_IN", deptId)
            .Parameters.AddWithValue("@Location_ID_IN", locationId)
            .Parameters.AddWithValue("@User_ID_IN", userId)
            .Parameters.AddWithValue("@StartDate_IN", startDate)
            .Parameters.AddWithValue("@Position_ID_IN", positionId)
            .Parameters.AddWithValue("@Profile_FileName_IN", profile)
            .Parameters.AddWithValue("@Profile_FilePath_IN", "Files/job-profile/")
            .Parameters.AddWithValue("@Appraisal_FileName_IN", appraisal)
            .Parameters.AddWithValue("@Appraisal_FilePath_IN", "Files/appraisal")
            .Parameters.AddWithValue("@PDP_FileName_IN", pdp)
            .Parameters.AddWithValue("@PDP_FilePath_IN", "Files/pdp")

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

    Public Shared Function SetCommunicationDetails(ByVal adminId As String, ByVal userID As String, ByVal compID As String, ByVal directReportTo As String,
                                           ByVal indirectReportTo As String) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("institutions")
            .CommandText = "Register_User_Reporting_To"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", adminId)
            .Parameters.AddWithValue("@Institution_ID_IN", compID)
            .Parameters.AddWithValue("@UserID_IN", userID)
            .Parameters.AddWithValue("@Direct_Report_ID_IN", directReportTo)
            .Parameters.AddWithValue("@Indirect_Report_ID_IN", indirectReportTo)
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

    Public Shared Function SetPermissionDetails(ByVal adminId As String, ByVal userID As String, ByVal companyId As String, ByVal permissionId As Integer,
                                           ByVal fileName As String, issuedDate As DateTime, expiryDate As DateTime) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("users")
            .CommandText = "Company_Registration_Company_Details_Cont_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Modifiedby_ID_IN", adminId)
            .Parameters.AddWithValue("@Institution_ID_IN", companyId)
            .Parameters.AddWithValue("@User_ID_IN", userID)
            .Parameters.AddWithValue("@Permission_IN", permissionId)
            .Parameters.AddWithValue("@FileName_IN", fileName)
            .Parameters.AddWithValue("@Issue_Date_IN", issuedDate)
            .Parameters.AddWithValue("@Expire_Date_IN", expiryDate)

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

    Public Shared Function getManagersPerInstitutions(ByVal companyId As String) As DataTable



        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})


        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("institutions"),
            .CommandText = "Institution_Managers_Get",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Institution_ID_IN", companyId)
        End With
        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim id As Integer = sqlReader.GetValue(0)
                Dim name As String = sqlReader.GetValue(1) & " " & sqlReader.GetValue(2)
                dt.Rows.Add(id, name)
            End While
        End If

        sqlReader.Close()

        Return dt
    End Function



#End Region

#Region "View-User"

    Public Shared Function getUsersPerInstitutions(ByVal companyId As String, permissionId As Integer) As DataTable



        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(5) {New DataColumn("ID"), New DataColumn("Name"), New DataColumn("Email"), New DataColumn("UserType"), New DataColumn("Registration"), New DataColumn("LastLogin")})
        Dim conn As MySqlConnection = index.setConn("users")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
        .CommandText = "View_Users",
        .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Institution_ID_IN", companyId)
            If permissionId.Equals(0) Then
                .AddWithValue("Permission_ID_IN", 0)
            Else
                .AddWithValue("Permission_ID_IN", permissionId)
            End If

        End With

        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try


            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim id As Integer = sqlReader.GetValue(0)
                    Dim name As String = sqlReader.GetValue(1) & " " & sqlReader.GetValue(2)
                    Dim email As String = sqlReader.GetValue(3)
                    Dim permId As Integer = sqlReader.GetValue(4)
                    Dim userType As String = sqlReader.GetValue(5)
                    Dim regDate As String = sqlReader.GetValue(6)
                    Dim lastLoginDate As String = DateTime.Parse(sqlReader.GetValue(7))

                    dt.Rows.Add(id, name, email, permId, userType, regDate, lastLoginDate)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add(ex.Message, ex.Message, ex.Message, ex.Message, ex.Message, ex.Message, ex.Message)
        Finally
            sqlReader.Close()
        End Try



        Return dt
    End Function

#End Region

End Class


