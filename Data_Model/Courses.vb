Imports System.IO
Imports MySql.Data.MySqlClient
Public Class Courses
    Public Property courseDuration As String
    Public Property courseName As String
    Public Property courseStatus As Boolean
    Public Property accessRetained As Boolean
    Public Property certification As String
    Public Property courseLevel As String
#Region "Course Methods"
    Public Shared Function setCourseDetails(ByVal modifiedByID As String, ByVal courseName As String,
                                            ByVal category As String, ByVal courseDescription As String,
                                            ByVal courseStatus As String, ByVal courseDuration As Integer,
                                            ByVal certification As String, ByVal level As String) As String
        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("lms")
            .CommandText = "Add_Skills_Course_Create"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@CourseName_IN", courseName)
            .Parameters.AddWithValue("@CategoryID_IN", category)
            .Parameters.AddWithValue("@CourseDescription_IN", courseDescription)
            .Parameters.AddWithValue("@Course_Hide_IN", courseStatus)
            .Parameters.AddWithValue("@CourseTimeLimet_IN", courseDuration)
            .Parameters.AddWithValue("@Cert_Type_ID_IN", certification)
            .Parameters.AddWithValue("@NQFLevel_IN", level)
            .Parameters.AddWithValue("@Modifiedby_ID_IN", modifiedByID)
        End With


        Try
            cmd.ExecuteNonQuery()
            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try
    End Function


    Public Shared Function getCourseSingle(ByVal courseID As Integer)

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(5) {New DataColumn("ID"), New DataColumn("Name"),
                            New DataColumn("CourseDescription"), New DataColumn("CourseTimeLimit"),
                            New DataColumn("NQFLevel"), New DataColumn("Disabled")})

        Dim conn As MySqlConnection = index.setConn("lms")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
            .CommandText = "Courses_Get",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Course_ID_IN", courseID) ' make this course ID
        End With
        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try
            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim id As Integer = sqlReader.GetValue(0)
                    Dim name As String = sqlReader.GetValue(1)
                    Dim description As String = sqlReader.GetValue(2)
                    Dim duration As String = sqlReader.GetValue(3)
                    Dim nqflevel As Integer = sqlReader.GetValue(4)
                    Dim status As Integer = sqlReader.GetValue(5)

                    dt.Rows.Add(id, name, description, duration, nqflevel, status)

                End While
            End If
        Catch ex As Exception
            dt.Rows.Add(ex.Message, ex.Message)
        Finally
            sqlReader.Close()
        End Try
        Return dt
    End Function
    Public Shared Function getAllCourses()

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(5) {New DataColumn("ID"), New DataColumn("Name"),
                            New DataColumn("CourseDescription"), New DataColumn("CourseTimeLimit"),
                            New DataColumn("NQFLevel"), New DataColumn("Disabled")})

        Dim conn As MySqlConnection = index.setConn("lms")
        Dim cmd As New MySqlCommand() With {
            .Connection = conn,
            .CommandText = "Courses_Get",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("Course_ID_IN", vbNull) ' make this course ID
        End With
        Dim sqlReader As MySqlDataReader = cmd.ExecuteReader()
        Try
            If sqlReader.HasRows Then
                While (sqlReader.Read())
                    Dim id As Integer = sqlReader.GetValue(0)
                    Dim name As String = sqlReader.GetValue(1)
                    Dim description As String = sqlReader.GetValue(2)
                    Dim duration As String = sqlReader.GetValue(3)
                    Dim nqflevel As Integer = sqlReader.GetValue(4)
                    Dim status As Integer = sqlReader.GetValue(5)

                    dt.Rows.Add(id, name, description, duration, nqflevel, status)
                End While
            End If
        Catch ex As Exception
            dt.Rows.Add(ex.Message, ex.Message)
        Finally
            sqlReader.Close()
        End Try
        Return dt
    End Function
    Public Shared Function getCategories()
        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("lms"),
            .CommandText = "Course_Categories_Get",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("CategoryID_IN", vbNull) ' make this course ID
        End With
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
    Public Shared Function getLevel()
        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("lms"),
            .CommandText = "Institution_Managers_Get",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            '  .AddWithValue("Institution_ID_IN", companyId) ' make this course ID
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

    Public Shared Function getCertificationAll()
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("ID"), New DataColumn("Name")})

        Dim cmd As New MySqlCommand() With {
            .Connection = index.setConn("lms"),
            .CommandText = "Course_Categories_Get",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("CategoryID_IN", vbNull) ' make this course ID
        End With
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

    Public Shared Function updateCourse(ByVal modifiedByID As String, ByVal courseName As String,
                                            ByVal courseDescription As String,
                                            ByVal courseDuration As Integer,
                                            ByVal NQFLevel As Integer) As String
        'ByVal courseStatus As Integer,
        'ByVal certification As Integer,
        'ByVal category As String,
        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("lms")
            .CommandText = "Courses_Update"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Course_ID_IN", courseName)
            .Parameters.AddWithValue("@CourseName_IN", courseName)
            '.Parameters.AddWithValue("@CategoryID_IN", category)
            .Parameters.AddWithValue("@CourseDescription_IN", courseDescription)
            '.Parameters.AddWithValue("@Course_Hide_IN", courseStatus)
            .Parameters.AddWithValue("@CourseTimeLimet_IN", courseDuration)
            '.Parameters.AddWithValue("@Cert_Type_ID_IN", certification)
            .Parameters.AddWithValue("@NQFLevel_IN", NQFLevel)
            .Parameters.AddWithValue("@Modifiedby_ID_IN", modifiedByID)
        End With


        Try

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try

    End Function
#End Region

#Region "Module Methods"
    Public Shared Function setModuleDetails()
        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = index.setConn("lms")
            .CommandText = ""
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@Course_ID_IN", cmd)
            .Parameters.AddWithValue("@ModuleName_IN", cmd)
            .Parameters.AddWithValue("@Moduledescription_IN", cmd)
            .Parameters.AddWithValue("@Disabled_IN", cmd)
            .Parameters.AddWithValue("@ModifiedBY_ID_IN", cmd)
        End With


        Try

            Return "Success"
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try
    End Function
#End Region
End Class
