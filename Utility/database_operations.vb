Imports System.Data
Imports MySql.Data.MySqlClient
Imports System.Data.SqlClient
Imports System.Web.SessionState

Public Class database_operations

    Public Shared Sub insertIntoDB(ByVal sql As String, ByVal conn As MySqlConnection)
        Try
            Dim cmd As New MySqlCommand(sql, conn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Dim msg As String = ex.Message.ToString
        End Try
    End Sub



    Public Shared Sub updateDB(ByVal sql As String, ByVal conn As MySqlConnection)
        Try
            Dim cmd As New MySqlCommand(sql, conn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            'donothing

        End Try
    End Sub

    Public Shared Sub DeleteFromDB(ByVal SQL As String, ByVal conn As MySqlConnection)
        Dim cmd As New MySqlCommand(SQL, conn)
        cmd.ExecuteNonQuery()
    End Sub

    Public Shared Function doesFieldExistInTable(ByVal columnName As String, ByVal columnValue As String, ByVal tableName As String, ByVal conn As MySqlConnection) As Boolean
        Dim cmd As New MySqlCommand()
        Dim sql As String
        Dim myReader As MySqlDataReader = Nothing
        Dim retValue As Boolean = False
        sql = "select * from " & tableName & " where lower(" & columnName & ")='" & columnValue & "'"
        Try
            cmd.CommandText = sql
            cmd.Connection = conn

            myReader = cmd.ExecuteReader
            While myReader.Read
                retValue = True
            End While
            myReader.Close()
            Return retValue
        Catch ex As Exception
            'DO NUFFIN
        End Try
        Return retValue
    End Function


    'Public Shared Function listAColumn(ByVal sql As String, ByVal conn As MySqlConnection) As ListItem()
    '    'returns a column
    '    Dim cmd As New MySqlCommand()
    '    Dim myReader As MySqlDataReader = Nothing
    '    Dim a_list As New ListItem()

    '    cmd.CommandText = sql
    '    cmd.Connection = conn
    '    myReader = cmd.ExecuteReader()
    '    While myReader.Read
    '        a_list.Text += myReader.GetValue(0)
    '        'a_list.Add()
    '    End While
    '    myReader.Close()
    '    Return a_list

    'End Function



    Public Shared Function listAllFacPosition(ByVal sql As String, ByVal conn As MySqlConnection) As ArrayList
        'returns a column
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing
        Dim a_list As New ArrayList

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        While myReader.Read
            a_list.Add(myReader.GetValue(0))
        End While
        myReader.Close()
        Return a_list

    End Function


    Public Shared Function listARow(ByVal sql As String, ByVal conn As MySqlConnection) As ArrayList
        'returns a row
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing
        Dim a_list As New ArrayList

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        Dim i As Integer = 0
        While myReader.Read
            i = 0 'reset i to start from first field
            'loop through each returned field and add to the string
            For i = 0 To myReader.FieldCount - 1
                a_list.Add(myReader.Item(i).ToString)
            Next
        End While
        myReader.Close()
        Return a_list

    End Function

    Public Shared Function listAColumn(ByVal sql As String, ByVal colPosition As Integer, ByVal conn As MySqlConnection) As ArrayList
        'returns a column
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing
        Dim a_list As New ArrayList

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        'Dim i As Integer = 0
        While myReader.Read
            'i = 0 'reset i to start from first field
            'loop through each returned field and add to the string
            a_list.Add(myReader.GetValue(colPosition))
        End While
        myReader.Close()
        Return a_list

    End Function

    Public Shared Function listSingle(ByVal sql As String, ByVal conn As MySqlConnection) As String
        'returns a column
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing
        Dim retval As String = String.Empty

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()

        While myReader.Read
            retval = myReader.GetValue(0)
        End While
        myReader.Close()
        Return retval

    End Function

    Public Shared Function listAll_UserCredentials(ByVal sql As String, ByVal conn As MySqlConnection) As List(Of UserCredentials)
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader
        Dim a_list As New Generic.List(Of UserCredentials)

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        While myReader.Read
            If Not String.IsNullOrEmpty(myReader.GetValue(0).ToString) Then
                Dim arow As New UserCredentials
                With arow
                    .userId = myReader.GetValue(0)
                    .username = myReader.GetValue(1)
                    .position = myReader.GetValue(2)
                    .department = myReader.GetValue(3)
                    .firstname = myReader.GetValue(4)
                    .lastname = myReader.GetValue(5)
                End With

                a_list.Add(arow)
            End If
        End While
        myReader.Close()
        Return a_list
    End Function

    Public Shared Function listAll_2_Columns(ByVal sql As String, ByVal conn As MySqlConnection) As List(Of List(Of String))
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader
        Dim a_list As New List(Of List(Of String))

        'a_list.Add(New List(Of String))

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()



        Dim j As Integer = 0

        While myReader.Read
            If Not String.IsNullOrEmpty(myReader.GetValue(0).ToString) Then
                a_list.Add(New List(Of String))
                For i = 0 To myReader.FieldCount - 1
                    Dim value As String = myReader.GetValue(i).ToString()
                    If Not String.IsNullOrEmpty(value) Then
                        a_list(j).Add(value)
                    End If
                Next

                'a_list(j).Add(myReader.GetValue(1))
                j += 1
                'Dim arow As New Tbl_LU_Facilities
                'arow.id = myReader.GetValue(0) 'impairment_group
                'arow.facility_name = myReader.GetValue(1) 'total admissions for imp group / 

                'a_list.Add(arow)
            End If
        End While
        myReader.Close()
        Return a_list
    End Function

    'Public Shared Function listAll_Facility_Performance_ALOS(ByVal sql As String, ByVal conn As MySqlConnection) As List(Of Tbl_LU_Facilities)
    '    Dim cmd As New MySqlCommand()
    '    Dim myReader As MySqlDataReader
    '    Dim a_list As New Generic.List(Of Tbl_LU_Facilities)

    '    cmd.CommandText = sql
    '    cmd.Connection = conn
    '    myReader = cmd.ExecuteReader()
    '    While myReader.Read
    '        If Not String.IsNullOrEmpty(myReader.GetValue(0).ToString) Then
    '            Dim arow As New Tbl_LU_Facilities
    '            arow.id = myReader.GetValue(0) 'impairment_group
    '            If Not String.IsNullOrEmpty(myReader.GetValue(1).ToString) Then
    '                arow.facility_name = myReader.GetValue(1) 'los / 
    '            Else
    '                arow.facility_name = 0 'los / 
    '            End If
    '            arow.facility_group = myReader.GetValue(2) 'count of each impairment
    '                a_list.Add(arow)
    '            End If
    '    End While
    '    myReader.Close()
    '    Return a_list
    'End Function

    'Public Shared Function listAll_GenList(ByVal sql As String, ByVal conn As MySqlConnection) As Generic.List(Of Tbl_CMT_Transact)
    '    'returns a column
    '    Dim cmd As New MySqlCommand()
    '    Dim myReader As MySqlDataReader = Nothing
    '    Dim a_list As New Generic.List(Of Tbl_CMT_Transact)

    '    cmd.CommandText = sql
    '    cmd.Connection = conn
    '    myReader = cmd.ExecuteReader()
    '    While myReader.Read
    '        Dim arow As New Tbl_CMT_Transact
    '        arow.name = myReader.GetValue(0)
    '        arow.date_stamp = myReader.GetValue(1)
    '        arow.id = Guid.NewGuid().ToString()

    '        a_list.Add(arow)
    '    End While
    '    myReader.Close()
    '    Return a_list

    'End Function

    Public Shared Function get_value_with_key(ByVal sql As String, ByVal conn As MySqlConnection) As Object
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing
        Dim retval As Object = Nothing

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        While myReader.Read
            retval = myReader.GetValue(0)
        End While
        myReader.Close()
        Return retval
    End Function

    Public Shared Function get_variant_value_from_db_with_sql(ByVal sql As String, ByVal conn As MySqlConnection) As String
        Dim retval As String = ""

        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        While myReader.Read
            If myReader.GetValue(0) Is Nothing Then
                retval = "NA"
            Else
                retval = myReader.GetValue(0).ToString
            End If

        End While
        myReader.Close()

        Return retval

    End Function

    Public Shared Function get_next_ID(ByVal sql As String, ByVal conn As MySqlConnection) As Integer
        Dim retval As Integer = 0

        'sql="select max(p_key_colunmnname) from tablename 

        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing
        Dim a_list As New ArrayList

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        While myReader.Read
            a_list.Add(myReader.GetValue(0))
        End While
        myReader.Close()
        If a_list.Item(0).ToString = "" Then
            retval = 1
        Else
            retval = CInt(a_list.Item(0)) + 1
        End If
        Return retval
    End Function

    'Public Shared Function listAll_with_DB_op(ByVal sql As String, ByVal conn As MySqlConnection) As Generic.List(Of Tbl_LU_ICD10)

    '    Dim ret As New Generic.List(Of Tbl_LU_ICD10)
    '    'returns a column
    '    Dim cmd As New MySqlCommand()
    '    Dim myReader As MySqlDataReader = Nothing
    '    Dim a_list As New ArrayList

    '    cmd.CommandText = sql
    '    cmd.Connection = conn
    '    myReader = cmd.ExecuteReader()
    '    While myReader.Read
    '        Dim icdrow As New Tbl_LU_ICD10
    '        With icdrow
    '            .id = myReader.GetValue(0)
    '            .icd10_code = myReader.GetValue(1)
    '            .icd10_description = myReader.GetValue(2)
    '        End With
    '        ret.Add(icdrow)
    '    End While
    '    myReader.Close()
    '    Return ret

    'End Function

    Public Shared Function listAllBetaImps(ByVal sql As String, ByVal conn As MySqlConnection) As ArrayList
        'returns a column
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing
        Dim a_list As New ArrayList

        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        While myReader.Read
            Dim imp As String = myReader.GetValue(0)
            If Not a_list.Contains(imp) Then a_list.Add(imp)
        End While
        myReader.Close()
        Return a_list
    End Function

    Public Shared Function get_total_admissions(ByVal sql As String, ByVal conn As MySqlConnection) As Integer
        'returns a column
        Dim cmd As New MySqlCommand()
        Dim myReader As MySqlDataReader = Nothing
        Dim retval As New Integer


        cmd.CommandText = sql
        cmd.Connection = conn
        myReader = cmd.ExecuteReader()
        While myReader.Read
            retval += Integer.Parse(myReader.GetValue(0))
        End While
        myReader.Close()
        Return retval
    End Function

End Class
