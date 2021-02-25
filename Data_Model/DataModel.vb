Imports MySql.Data.MySqlClient


Public Class DataModel
    Inherits System.Web.UI.Page

#Region "Authenticate A User"

    Public Shared Function AuthenticateUser(ByVal username As String, ByVal password As String, ByVal conn As MySqlConnection) As String



        Dim cmd As New MySqlCommand()

        With cmd
            .Connection = conn
            .CommandText = "Login_Safwaan"
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("Username_IN", username)
            .Parameters.AddWithValue("UserPass_IN", password)
            .Parameters.Add("@UserID_Out", MySqlDbType.VarChar, 38)
            .Parameters.Add("@Authenticated_Out", MySqlDbType.Bit)
            .Parameters.Add("@UserFirstName_OUT", MySqlDbType.VarChar, 50)
            .Parameters.Add("@UserLastName_OUT", MySqlDbType.VarChar, 50)
            .Parameters.Add("@UserMaidenName_OUT", MySqlDbType.VarChar, 50)
            .Parameters.Add("@JobTitle_Out", MySqlDbType.VarChar, 50)
            .Parameters.Add("@JobDescription_OUT", MySqlDbType.VarChar, 50)
            .Parameters.Add("@DepartmentID_OUT", MySqlDbType.Int32)
            .Parameters.Add("@DepartmentName_OUT", MySqlDbType.VarChar, 50)
            .Parameters.Add("@Institution_ID_OUT", MySqlDbType.Int32)
            .Parameters.Add("@InstitutionName_OUT", MySqlDbType.VarChar, 50)
            .Parameters("@UserID_Out").Direction = ParameterDirection.Output
            .Parameters("@Authenticated_Out").Direction = ParameterDirection.Output
            .Parameters("@UserFirstName_OUT").Direction = ParameterDirection.Output
            .Parameters("@UserLastName_OUT").Direction = ParameterDirection.Output
            .Parameters("@UserMaidenName_OUT").Direction = ParameterDirection.Output
            .Parameters("@JobTitle_Out").Direction = ParameterDirection.Output
            .Parameters("@JobDescription_OUT").Direction = ParameterDirection.Output
            .Parameters("@DepartmentID_OUT").Direction = ParameterDirection.Output
            .Parameters("@DepartmentName_OUT").Direction = ParameterDirection.Output
            .Parameters("@Institution_ID_OUT").Direction = ParameterDirection.Output
            .Parameters("@InstitutionName_OUT").Direction = ParameterDirection.Output
        End With


        Try
            'conn.Open()
            cmd.ExecuteNonQuery()
            Dim userId As String = Convert.ToString(cmd.Parameters("@UserID_Out").Value)
            Dim userExists As Boolean = Convert.ToBoolean(cmd.Parameters("@Authenticated_Out").Value)
            Dim firstName As String = Convert.ToString(cmd.Parameters("@UserFirstName_OUT").Value)
            Dim lastName As String = Convert.ToString(cmd.Parameters("@UserLastName_OUT").Value)
            Dim maidenName As String = Convert.ToString(cmd.Parameters("@UserMaidenName_OUT").Value)
            Dim jobTitle As String = Convert.ToString(cmd.Parameters("@JobTitle_Out").Value)
            Dim jobDescription As String = Convert.ToString(cmd.Parameters("@JobDescription_OUT").Value)
            Dim deptId As String = Convert.ToString(cmd.Parameters("@DepartmentID_OUT").Value)
            Dim deptName As String = Convert.ToString(cmd.Parameters("@DepartmentName_OUT").Value)
            Dim instId As String = Convert.ToString(cmd.Parameters("@Institution_ID_OUT").Value)
            Dim instName As String = Convert.ToString(cmd.Parameters("@InstitutionName_OUT").Value)

            If userExists = True Then

                'Instantiate Session variables
                HttpContext.Current.Session("username") = username
                HttpContext.Current.Session("user_id") = userId
                HttpContext.Current.Session("job_title") = jobTitle
                HttpContext.Current.Session("dept_id") = deptId
                HttpContext.Current.Session("dept_name") = deptName
                HttpContext.Current.Session("comp_id") = instId
                HttpContext.Current.Session("comp_name") = instId
                HttpContext.Current.Session("fullname") = firstName & " " & lastName
                Return "Success"
            Else
                Return "Fail"
            End If
        Catch ex As Exception
            Return ex.Message.ToString
        Finally
            'conn.Close()
        End Try


    End Function

    Public Shared Function getUsersByInstituitionId(userID As String, instituitionId As String) As DataTable

        index.setConn("users")

        Dim dt As New DataTable


        dt.Columns.AddRange(New DataColumn(4) {New DataColumn("UserId"), New DataColumn("Position"), New DataColumn("Department"),
                            New DataColumn("FirstName"), New DataColumn("LastName")})


        Dim sqlComm As New MySqlCommand()

        sqlComm.Connection = HttpContext.Current.Session("conn")


        sqlComm.CommandText = "getUsersByInstituition"
        sqlComm.CommandType = CommandType.StoredProcedure

        sqlComm.Parameters.AddWithValue("@userId", userID)
        sqlComm.Parameters.AddWithValue("@InstituitionId", instituitionId)


        Dim sqlReader As MySqlDataReader = sqlComm.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim user As String = sqlReader.GetString(0)
                Dim position As String = sqlReader.GetString(1)
                Dim department As String = sqlReader.GetString(2)
                Dim firstName As String = sqlReader.GetString(3)
                Dim lastName As String = sqlReader.GetString(4)

                dt.Rows.Add(user, position, department, firstName, lastName)

            End While

        End If

        sqlReader.Close()

        Return dt
    End Function

#End Region

#Region "Create A Doc"


    Public Shared Function insertDocDetails(ByVal docID As String, ByVal docName As String,
                                            ByVal docDateRaised As String, ByVal docType As String,
                                            ByVal docCategory As String, ByVal conn As MySqlConnection) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "InsertDocDetails",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("doc_id", docID)
            .AddWithValue("doc_name", docName)
            .AddWithValue("doc_date_raised", docDateRaised)
            .AddWithValue("doc_type", docType)
            .AddWithValue("doc_category", docCategory)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function insertDocRevision(ByVal docRevisionID As String, ByVal docID As String,
                                            ByVal docIssuedDate As String, ByVal docStatus As String,
                                            ByVal docRevisionNum As String, ByVal docDescription As String,
                                            ByVal docDepartment As String, ByVal docCompany As String,
                                            ByVal conn As MySqlConnection) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "InsertDocRevision",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("doc_revision_id", docRevisionID)
            .AddWithValue("doc_details_id", docID)
            .AddWithValue("doc_issued_date", docIssuedDate)
            .AddWithValue("doc_status", docStatus)
            .AddWithValue("doc_revision_num", docRevisionNum)
            .AddWithValue("doc_description", docDescription)
            .AddWithValue("doc_issuer_department", docDepartment)
            .AddWithValue("doc_issuer_company", docCompany)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function insertDocPathDetails(ByVal docPathDetailsID As String, ByVal docID As String,
                                            ByVal docPath As String, ByVal docAuditPath As String,
                                            ByVal docRevisionID As String, ByVal conn As MySqlConnection) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "InsertDocPath",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("doc_pd_id", docPathDetailsID)
            .AddWithValue("doc_details_id", docID)
            .AddWithValue("doc_pd_path", docPath)
            .AddWithValue("doc_pd_audit_path", docAuditPath)
            .AddWithValue("doc_revision_id", docRevisionID)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function insertDocIssuedBy(ByVal docIssuedByID As String, ByVal docID As String,
                                            ByVal docIssuedBy As String, ByVal docIssuerComments As String,
                                            ByVal docRevisionID As String, ByVal conn As MySqlConnection) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "InsertDocIssuedBy",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("doc_issued_by_id", docIssuedByID)
            .AddWithValue("doc_details_id", docID)
            .AddWithValue("doc_issued_by", docIssuedBy)
            .AddWithValue("doc_issuer_comments", docIssuerComments)
            .AddWithValue("doc_revision_id", docRevisionID)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function insertDocIssuedTo(ByVal dtIssuedTo As DataTable, ByVal conn As MySqlConnection) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "InsertDocIssued",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("tablePersonell", dtIssuedTo)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    'Public Shared Function addDocIssuedTo(docID As String, docRevisionID As String, conn As MyMySqlConnection) As String
    '    Dim retval As String = String.Empty
    '    Dim sqlQuery As String = String.Empty
    '    Dim arrReviewers As New ArrayList
    '    For x = 0 To ddlIssuedTo.Items.Count() - 1
    '        If ddlIssuedTo.Items(x).Selected = True Then

    '            Dim id As String = Guid.NewGuid.ToString
    '            Dim userID As String = ddlIssuedTo.Items(x).Value.Trim
    '            sqlQuery = sqlQuery & "('" & id & "', '" & docID & "', '" & userID & "', '" & docRevisionID & "'), "

    '        End If
    '    Next x
    '    'Build the query
    '    sqlQuery = "INSERT INTO Tbl_Doc_Issued_To (doc_issued_to_id, doc_details_id, doc_issued_to, doc_revision_id) VALUES " & sqlQuery
    '    'Remove the last comma
    '    sqlQuery = sqlQuery.Trim.TrimEnd(CChar(","))
    '    sqlQuery = sqlQuery & ";"

    '    database_operations.insertIntoDB(sqlQuery, conn)

    'End Function

#End Region

#Region "View Doc"

    Public Shared Function getAllDocuments(userID As String, userCompany As String, userPosition As String, docStatus As String) As DataTable

        index.setConn("dmp_v2")

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(9) {New DataColumn("docID"), New DataColumn("docRevisionID"), New DataColumn("#"),
                            New DataColumn("Name"), New DataColumn("Description"),
                            New DataColumn("Type"),
                            New DataColumn("Category"), New DataColumn("Status"), New DataColumn("Issued Date"), New DataColumn("Revision")})


        Dim sqlComm As New MySqlCommand()

        sqlComm.Connection = HttpContext.Current.Session("conn")

        If docStatus.Equals("All") Then
            sqlComm.CommandText = "GetAllDocuments"
            sqlComm.CommandType = CommandType.StoredProcedure

            sqlComm.Parameters.AddWithValue("@userCompany", userCompany)
            sqlComm.Parameters.AddWithValue("@userPosition", userPosition)
            sqlComm.Parameters.AddWithValue("@userId", userID)
        Else
            sqlComm.CommandText = "getDocumentsByStatus"
            sqlComm.CommandType = CommandType.StoredProcedure

            sqlComm.Parameters.AddWithValue("@userCompany", userCompany)
            sqlComm.Parameters.AddWithValue("@userPosition", userPosition)
            sqlComm.Parameters.AddWithValue("@userId", userID)
            sqlComm.Parameters.AddWithValue("@docStatus", docStatus)
        End If

        Dim sqlReader As MySqlDataReader = sqlComm.ExecuteReader()

        If sqlReader.HasRows Then
            Dim index As Integer = 1
            While (sqlReader.Read())
                Dim docID As String = sqlReader.GetString(0)
                Dim docRevisionID As String = sqlReader.GetString(1)
                Dim docName As String = sqlReader.GetString(2)
                Dim docDescription As String = sqlReader.GetString(3)
                Dim docType As String = sqlReader.GetString(4)
                Dim docCategory As String = sqlReader.GetString(5)
                Dim docStat As String = sqlReader.GetString(6)
                Dim docIssuedDate As String = sqlReader.GetValue(7)
                Dim docRevisionNum As Integer = sqlReader.GetValue(8)

                dt.Rows.Add(docID, docRevisionID, index, docName, docDescription, docType, docCategory, docStat, docIssuedDate, docRevisionNum)

                index += 1

            End While

        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Function getADocument(docID As String, docRevisionID As String, conn As MySqlConnection) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(9) {New DataColumn("docID"), New DataColumn("docRevisionID"), New DataColumn("#"), New DataColumn("Name"), New DataColumn("Description"), New DataColumn("Type"),
                            New DataColumn("Category"), New DataColumn("Status"), New DataColumn("Issued Date"), New DataColumn("Revision")})


        Dim sqlComm As New MySqlCommand()

        sqlComm.Connection = conn


        sqlComm.CommandText = "GetADocument"
        sqlComm.CommandType = CommandType.StoredProcedure

        sqlComm.Parameters.AddWithValue("doc_id", docID)
        sqlComm.Parameters.AddWithValue("doc_revision_id", docRevisionID)

        Dim sqlReader As MySqlDataReader = sqlComm.ExecuteReader()

        If sqlReader.HasRows Then
            Dim index As Integer = 1
            While (sqlReader.Read())
                'Dim doc_ID As String = sqlReader.GetString(0)
                'Dim docRevision_ID As String = sqlReader.GetString(1)
                Dim docName As String = sqlReader.GetString(2)
                Dim docDescription As String = sqlReader.GetString(3)
                Dim docType As String = sqlReader.GetString(4)
                Dim docCategory As String = sqlReader.GetString(5)
                Dim docStat As String = sqlReader.GetString(6)
                Dim docIssuedDate As String = sqlReader.GetValue(7)
                Dim docRevisionNum As Integer = sqlReader.GetValue(8)

                dt.Rows.Add(docID, docRevisionID, index, docName, docDescription, docType, docCategory, docStat, docIssuedDate, docRevisionNum)

                index += 1

            End While

        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Function getnumOfDocuments(docCompany As String, userPosition As String, userID As String, conn As MySqlConnection) As DataTable
        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("All"), New DataColumn("Approved"), New DataColumn("Pending"), New DataColumn("Withdrawn")})

        Dim sqlComm As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "GetNumOfDocuments",
            .CommandType = CommandType.StoredProcedure
        }

        sqlComm.Parameters.AddWithValue("@userCompany", docCompany)
        sqlComm.Parameters.AddWithValue("@userPosition", userPosition)
        sqlComm.Parameters.AddWithValue("@userId", userID)

        Dim ds As New DataSet
        Dim da As New MySqlDataAdapter(sqlComm)
        Using da
            da.Fill(ds)

            Dim AllDocs As Integer = Integer.Parse(ds.Tables(0).Rows(0).Item("All").ToString)

            Dim ApprovedDocs As Integer = Integer.Parse(ds.Tables(1).Rows(0).Item("Approved").ToString)
            Dim PendingDocs As Integer = Integer.Parse(ds.Tables(2).Rows(0).Item("Pending").ToString)
            Dim WithDrawnDocs As Integer = Integer.Parse(ds.Tables(3).Rows(0).Item("Withdrawn").ToString)

            dt.Rows.Add(AllDocs, ApprovedDocs, PendingDocs, WithDrawnDocs)

        End Using

        Return dt
    End Function

    Public Shared Function getDocPath(docID As String, docRevisionID As String, conn As MySqlConnection) As DataTable
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(1) {New DataColumn("Document"), New DataColumn("Audit")})

        Dim sqlComm As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "ViewDoc",
            .CommandType = CommandType.StoredProcedure
        }

        sqlComm.Parameters.AddWithValue("doc_id", docID)
        sqlComm.Parameters.AddWithValue("doc_revision_id", docRevisionID)

        Dim sqlReader As MySqlDataReader = sqlComm.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim docPath As String = sqlReader.GetString(0)
                Dim docAuditPath As String = sqlReader.GetString(1)

                dt.Rows.Add(docPath, docAuditPath)

            End While

        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Function listApprovedDocs(issuerCompany As String, conn As MySqlConnection) As DataTable
        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("docID"), New DataColumn("docRevisionID"), New DataColumn("docName"), New DataColumn("docRevisionNum")})

        Dim sqlComm As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "getApprovedDocuments",
            .CommandType = CommandType.StoredProcedure
        }


        sqlComm.Parameters.AddWithValue("@userCompany", issuerCompany)

        Dim sqlReader As MySqlDataReader = sqlComm.ExecuteReader()

        If sqlReader.HasRows Then
            While (sqlReader.Read())
                Dim docID As String = sqlReader.GetString(0)
                Dim docRevisionID As String = sqlReader.GetString(1)
                Dim docName As String = sqlReader.GetString(2)
                Dim docRevisionNum As Integer = sqlReader.GetValue(3)

                dt.Rows.Add(docID, docRevisionID, docName, docRevisionNum)

            End While

        End If

        sqlReader.Close()

        Return dt
    End Function




#End Region

#Region "Create a Request"

    Public Shared Function insertDocReqChange(ByVal docReqChangeID As String, ByVal docID As String,
                                            ByVal docRequestFrom As String, ByVal docReqComments As String,
                                            ByVal docReqPath As String, ByVal docRevisionID As String,
                                            ByVal docRequestStatus As String, ByVal docRequestType As String, ByVal conn As MySqlConnection) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "InsertDocRequestChange",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("@doc_request_change_id", docReqChangeID)
            .AddWithValue("@doc_details_id", docID)
            .AddWithValue("@doc_request_from", docRequestFrom)
            .AddWithValue("@doc_request_comments", docReqComments)
            .AddWithValue("@doc_request_date", DateTime.Now.ToString)
            .AddWithValue("@doc_request_path", docReqPath)
            .AddWithValue("@doc_revision_id", docRevisionID)
            .AddWithValue("@doc_request_status", docRequestStatus)
            .AddWithValue("@doc_request_type", docRequestType)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function insertDocReqChangeNA(ByVal docReqChangeID As String, ByVal docID As String,
                                            ByVal docRequestFrom As String,
                                            ByVal docReqComments As String, ByVal docReqPath As String,
                                            ByVal docRevisionID As String,
                                            ByVal docRequestStatus As String, ByVal docRequestType As String, ByVal conn As MySqlConnection) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "InsertDocRequestChangeNA",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("@doc_request_change_id", docReqChangeID)
            .AddWithValue("@doc_details_id", docID)
            .AddWithValue("@doc_request_from", docRequestFrom)
            '.AddWithValue("@doc_request_to", docRequestTo)
            .AddWithValue("@doc_request_comments", docReqComments)
            .AddWithValue("@doc_request_date", DateTime.Now.ToString)
            .AddWithValue("@doc_request_path", docReqPath)
            .AddWithValue("@doc_revision_id", docRevisionID)
            .AddWithValue("@doc_request_status", docRequestStatus)
            .AddWithValue("@doc_request_type", docRequestType)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

    Public Shared Function insertDocIssuedToAdmin(ByVal docID As String,
                                             ByVal docRevisionID As String, ByVal docReqChangeID As String,
                                             ByVal conn As MySqlConnection) As String

        Dim retval As String = String.Empty
        Dim docIssuedToID As String = Guid.NewGuid.ToString
        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "InsertDocIssuedToAdmin",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("@doc_issued_to_id", docIssuedToID)
            .AddWithValue("@doc_details_id", docID)
            .AddWithValue("@doc_revision_id", docRevisionID)
            .AddWithValue("@doc_req_change_id", docReqChangeID)

        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval

    End Function

#End Region

#Region "View Request"

    Public Shared Function getAllRequests(userID As String, reqStatus As String, conn As MySqlConnection) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(10) {New DataColumn("docID"), New DataColumn("docRevisionID"), New DataColumn("docReqID"),
                            New DataColumn("Name"), New DataColumn("Description"),
                            New DataColumn("Status"), New DataColumn("Date"),
                            New DataColumn("Path"), New DataColumn("Requestor"),
                            New DataColumn("RequestorID"), New DataColumn("ReqDenyReason")})


        Dim sqlComm As New MySqlCommand()

        sqlComm.Connection = conn

        If reqStatus.Equals("All") Then
            sqlComm.CommandText = "GetAllRequests"
            sqlComm.CommandType = CommandType.StoredProcedure

            sqlComm.Parameters.AddWithValue("@req_issued_to", userID)
        Else
            sqlComm.CommandText = "GetRequests"
            sqlComm.CommandType = CommandType.StoredProcedure

            sqlComm.Parameters.AddWithValue("@req_status", reqStatus)
            sqlComm.Parameters.AddWithValue("@req_issued_to", userID)
        End If

        Dim sqlReader As MySqlDataReader = sqlComm.ExecuteReader()

        If sqlReader.HasRows Then
            Dim index As Integer = 1
            While (sqlReader.Read())
                Dim docID As String = sqlReader.GetString(0)
                Dim docRevisionID As String = sqlReader.GetString(1)
                Dim docReqID As String = sqlReader.GetString(2)
                Dim docName As String = sqlReader.GetString(3)
                Dim docDescription As String = sqlReader.GetString(4)
                Dim docStat As String = sqlReader.GetString(5)
                Dim docIssuedDate As String = sqlReader.GetValue(6)
                Dim docPath As String = sqlReader.GetString(7)
                Dim docRequestor As String = sqlReader.GetString(8)
                Dim userFirstName As String = sqlReader.GetString(9)
                Dim userLastName As String = sqlReader.GetString(10)
                Dim docRevisionNum As String = sqlReader.GetValue(11).ToString
                Dim docReqDenyReason As String = sqlReader.GetValue(12).ToString

                dt.Rows.Add(docID, docRevisionID, docReqID, docName & " - Revision " & docRevisionNum, docDescription, docStat,
                            docIssuedDate, docPath, userFirstName & " " & userLastName, docRequestor, docReqDenyReason)

                index += 1

            End While

        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Function getAllMyRequests(userID As String, reqStatus As String, conn As MySqlConnection) As DataTable

        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(10) {New DataColumn("docID"), New DataColumn("docRevisionID"), New DataColumn("docReqID"),
                            New DataColumn("Name"), New DataColumn("Description"),
                            New DataColumn("Status"), New DataColumn("Date"),
                            New DataColumn("Path"), New DataColumn("Requestor"),
                            New DataColumn("RequestorID"), New DataColumn("ReqDenyReason")})


        Dim sqlComm As New MySqlCommand()

        sqlComm.Connection = conn

        If reqStatus.Equals("All") Then
            sqlComm.CommandText = "GetAllMyRequests"
            sqlComm.CommandType = CommandType.StoredProcedure

            sqlComm.Parameters.AddWithValue("@req_issued_by", userID)
        Else
            sqlComm.CommandText = "GetMyRequests"
            sqlComm.CommandType = CommandType.StoredProcedure

            sqlComm.Parameters.AddWithValue("@req_status", reqStatus)
            sqlComm.Parameters.AddWithValue("@req_issued_by", userID)
        End If

        Dim sqlReader As MySqlDataReader = sqlComm.ExecuteReader()

        If sqlReader.HasRows Then
            Dim index As Integer = 1
            While (sqlReader.Read())
                Dim docID As String = sqlReader.GetString(0)
                Dim docRevisionID As String = sqlReader.GetString(1)
                Dim docReqID As String = sqlReader.GetString(2)
                Dim docName As String = sqlReader.GetString(3)
                Dim docDescription As String = sqlReader.GetString(4)
                Dim docStat As String = sqlReader.GetString(5)
                Dim docIssuedDate As String = sqlReader.GetValue(6)
                Dim docPath As String = sqlReader.GetString(7)
                Dim docRequestor As String = sqlReader.GetString(8)
                Dim userFirstName As String = sqlReader.GetString(9)
                Dim userLastName As String = sqlReader.GetString(10)
                Dim docRevisionNum As String = sqlReader.GetValue(11).ToString
                Dim docReqDenyReason As String = sqlReader.GetValue(12).ToString

                dt.Rows.Add(docID, docRevisionID, docReqID, docName & " - Revision " & docRevisionNum, docDescription, docStat,
                            docIssuedDate, docPath, userFirstName & " " & userLastName, docRequestor, docReqDenyReason)

                index += 1

            End While

        End If

        sqlReader.Close()

        Return dt
    End Function

    Public Shared Function getnumOfRequests(docIssuedTo As String, conn As MySqlConnection) As DataTable
        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("All"), New DataColumn("Approved"), New DataColumn("Pending"), New DataColumn("Withdrawn")})

        Dim sqlComm As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "getNumOfRequests",
            .CommandType = CommandType.StoredProcedure
        }

        sqlComm.Parameters.AddWithValue("@doc_issued_to", docIssuedTo)

        Dim ds As New DataSet
        Dim da As New MySqlDataAdapter(sqlComm)
        Using da
            da.Fill(ds)

            Dim AllDocs As Integer = Integer.Parse(ds.Tables(0).Rows(0).Item("All").ToString)

            Dim ApprovedDocs As Integer = Integer.Parse(ds.Tables(1).Rows(0).Item("Approved").ToString)
            Dim PendingDocs As Integer = Integer.Parse(ds.Tables(2).Rows(0).Item("Pending").ToString)
            Dim WithDrawnDocs As Integer = Integer.Parse(ds.Tables(3).Rows(0).Item("Withdrawn").ToString)

            dt.Rows.Add(AllDocs, ApprovedDocs, PendingDocs, WithDrawnDocs)

        End Using

        Return dt
    End Function

    Public Shared Function getnumOfMyRequests(docIssuedBy As String, conn As MySqlConnection) As DataTable
        Dim dt As New DataTable

        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("All"), New DataColumn("Approved"), New DataColumn("Pending"), New DataColumn("Withdrawn")})

        Dim sqlComm As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "getNumOfMyRequests",
            .CommandType = CommandType.StoredProcedure
        }

        sqlComm.Parameters.AddWithValue("@doc_issued_by", docIssuedBy)

        Dim ds As New DataSet
        Dim da As New MySqlDataAdapter(sqlComm)
        Using da
            da.Fill(ds)

            Dim AllDocs As Integer = Integer.Parse(ds.Tables(0).Rows(0).Item("All").ToString)

            Dim ApprovedDocs As Integer = Integer.Parse(ds.Tables(1).Rows(0).Item("Approved").ToString)
            Dim PendingDocs As Integer = Integer.Parse(ds.Tables(2).Rows(0).Item("Pending").ToString)
            Dim WithDrawnDocs As Integer = Integer.Parse(ds.Tables(3).Rows(0).Item("Withdrawn").ToString)

            dt.Rows.Add(AllDocs, ApprovedDocs, PendingDocs, WithDrawnDocs)

        End Using

        Return dt
    End Function

#End Region

#Region "Update a Request"

    Public Shared Function updateRequestStatus(reqID As String, reqStatus As String, reqdenyReason As String, conn As MySqlConnection) As String

        Dim retval As String = String.Empty

        Dim cmd As New MySqlCommand With {
            .Connection = conn,
            .CommandText = "UpdateARequest",
            .CommandType = CommandType.StoredProcedure
        }

        With cmd.Parameters
            .AddWithValue("@req_id", reqID)
            .AddWithValue("@req_status", reqStatus)
            .AddWithValue("@req_deny_reason", reqdenyReason)
        End With

        Try
            cmd.ExecuteNonQuery()
            retval = "Success"
        Catch ex As Exception
            retval = ex.Message.ToString
        End Try

        Return retval
    End Function

#End Region

    Shared Function getFileType(fileType As String) As String
        Dim retval As String = String.Empty
        Select Case fileType
            Case "pdf"
                retval = "APPLICATION/pdf"
            Case "rtf"
                retval = "text/richtext"
            Case "txt"
                retval = "text/plain"
            Case "doc"
                retval = "APPLICATION/doc"
            Case "jpeg"
                retval = "image/jpeg"
            Case "png"
                retval = "image/png"
            Case "wav"
                retval = "audio/wav"
            Case "unix"
                retval = "audio/basic"
            Case "mpeg"
                retval = "video/mpeg"
            Case "avi"
                retval = "video/avi"
            Case "zip"
                retval = "application/x-zip-compressed"
        End Select

        Return retval
    End Function

End Class
