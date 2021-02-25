Imports MySql.Data.MySqlClient
Public Class DocumentPortal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then

            If IsNothing(Session("conn")) Then
                Response.Redirect("Login.aspx")
            End If

            SetMenu()
            bindDocuments("All")

            bindBadges()
            listApprovedDocuments()



        End If
    End Sub

    Protected Sub SetMenu()

        lblFullName.InnerText = "Hello " & Session("fullname").ToString

        'If Session("position").Equals("Admin") Then
        '    btnWithdrawnDocs.InnerHtml = "Withdrawn <span class=""badge badge-danger"" id=""spWithdrawn"" runat=""server""></span>"
        '    btnPendingDocs.InnerHtml = "Pending <span class=""badge badge-warning"" id=""spPending"" runat=""server""></span>"
        'End If

        'If Session("position").Equals("Admin") Then
        '    liReqPortal.Visible = True
        'Else
        '    liReqPortal.Visible = False
        'End If

    End Sub

    Private Sub BuildTable(docStatus As String)

        Dim userCompany As String = Session("company")
        Dim userPosition As String = Session("position")
        Dim conn As MySqlConnection = Session("conn")
        Dim userID As String = Session("user_id")
        Dim dt As DataTable = DataModel.getAllDocuments(userID, userCompany, userPosition, docStatus)
        gvDocuments.DataSource = dt

        Dim row As HtmlTableRow
        Dim cell As HtmlTableCell
        Dim rowIndx As Integer = 0
        For Each r In dt.Rows
            row = New HtmlTableRow()
            cell = New HtmlTableCell With {.InnerText = dt.Rows(rowIndx).Item("Number").ToString}
            row.Controls.Add(cell)
            cell = New HtmlTableCell With {.InnerText = TryNbsp(dt.Rows(rowIndx).Item("Name"))}
            row.Controls.Add(cell)
            cell = New HtmlTableCell With {.InnerText = TryNbsp(dt.Rows(rowIndx).Item("Description"))}
            row.Controls.Add(cell)
            cell = New HtmlTableCell With {.InnerText = TryNbsp(dt.Rows(rowIndx).Item("Type"))}
            row.Controls.Add(cell)
            cell = New HtmlTableCell With {.InnerText = TryNbsp(dt.Rows(rowIndx).Item("Category"))}
            row.Controls.Add(cell)
            cell = New HtmlTableCell With {.InnerText = TryNbsp(dt.Rows(rowIndx).Item("Status"))}
            row.Controls.Add(cell)
            cell = New HtmlTableCell With {.InnerText = TryNbsp(dt.Rows(rowIndx).Item("Issued Date"))}
            row.Controls.Add(cell)
            cell = New HtmlTableCell With {.InnerText = TryNbsp(dt.Rows(rowIndx).Item("Revision"))}
            row.Controls.Add(cell)
            'tbDocuments.Controls.Add(row)
            rowIndx += 1
        Next
    End Sub

    Function TryNbsp(ByVal s As String) As String
        If s = "" Then
            Return "&nbsp;"
        Else
            Return s
        End If
    End Function

    Function CreateButton(ByVal id As Integer) As HtmlButton
        Dim btn As New System.Web.UI.HtmlControls.HtmlButton
        btn.ID = id
        btn.Attributes("class") = "btn btn-indigo btn-sm m-0"
        btn.InnerHtml = "View"

        Return btn

    End Function

#Region "Badge Buttons"

    Protected Sub btnAllDocs_ServerClick(sender As Object, e As EventArgs)
        bindDocuments("All")

        btnAllDocs.Attributes("class") = "nav-link active"
        btnApprovedDocs.Attributes("class") = "nav-link"
        btnPendingDocs.Attributes("class") = "nav-link"
        btnWithdrawnDocs.Attributes("class") = "nav-link"
        lblDoc.InnerText = "All Documents"

    End Sub

    Protected Sub btnApprovedDocs_ServerClick(sender As Object, e As EventArgs)
        bindDocuments("Approved")

        btnAllDocs.Attributes("class") = "nav-link"
        btnApprovedDocs.Attributes("class") = "nav-link active"
        btnPendingDocs.Attributes("class") = "nav-link"
        btnWithdrawnDocs.Attributes("class") = "nav-link"
        lblDoc.InnerText = "Approved Documents"
    End Sub

    Protected Sub btnPendingDocs_ServerClick(sender As Object, e As EventArgs)

        bindDocuments("Pending")

        btnAllDocs.Attributes("class") = "nav-link"
        btnApprovedDocs.Attributes("class") = "nav-link"
        btnPendingDocs.Attributes("class") = "nav-link active"
        btnWithdrawnDocs.Attributes("class") = "nav-link"
        lblDoc.InnerText = "Pending Documents"
    End Sub

    Protected Sub btnWithdrawnDocs_ServerClick(sender As Object, e As EventArgs)

        bindDocuments("Withdrawn")

        btnAllDocs.Attributes("class") = "nav-link"
        btnApprovedDocs.Attributes("class") = "nav-link"
        btnPendingDocs.Attributes("class") = "nav-link"
        btnWithdrawnDocs.Attributes("class") = "nav-link active"
        lblDoc.InnerText = "Withdrawn Documents"
    End Sub



#End Region

#Region "Gridview"

    Protected Sub bindDocuments(docStatus As String)
        Dim userCompany As String = Session("company")
        Dim userPosition As String = Session("position")
        Dim conn As MySqlConnection = Session("conn")
        Dim userID As String = Session("user_id")
        Dim dt As DataTable = DataModel.getAllDocuments(userID, userCompany, userPosition, docStatus)
        gvDocuments.DataSource = dt
        ViewState("dt_doc") = dt
        gvDocuments.DataBind()
    End Sub

    Protected Sub bindBadges()
        Dim conn As MySqlConnection = Session("conn")
        Dim docCompany As String = Session("company")
        Dim userPosition As String = Session("position")
        Dim userID As String = Session("user_id")
        Dim dt As DataTable = DataModel.getnumOfDocuments(docCompany, userPosition, userID, conn)
        spAll.InnerText = dt.Rows(0).Item("All").ToString
        spApproved.InnerText = dt.Rows(0).Item("Approved").ToString
        spPending.InnerText = dt.Rows(0).Item("Pending").ToString
        spWithdrawn.InnerText = dt.Rows(0).Item("Withdrawn").ToString

    End Sub

    Protected Sub downloadFile(fileName As String)

        'Get the attached file type
        Dim index As Integer = fileName.LastIndexOf(".")
        Dim docFileType As String = fileName.Substring(index + 1)

        Dim filePath As String = Server.MapPath("../Files/" & fileName)
        Dim fileToDownload As New System.IO.FileInfo(Server.MapPath("../Files/" & fileName))
        'To Do
        'Currently downloads a corrupt file if the file is missing.
        Try
            Response.Clear()
            Response.AppendHeader("content-disposition", "attachment; filename=" & fileName)
            Dim contentType As String = DataModel.getFileType(docFileType)
            Response.ContentType = contentType
        Catch ex As Exception
            Session("from_screen") = "patient_profile"
            Session("lblTitle") = "Error"
            Session("lblBody") = ex.ToString()
            Response.Redirect("sys_messages.aspx")
        End Try

        Response.WriteFile(filePath)
        Response.End()
    End Sub

    Protected Sub gvDocuments_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        gvDocuments.PageIndex = e.NewPageIndex

        If lblDoc.InnerText = "All Documents" Then
            bindDocuments("All")
        ElseIf lblDoc.InnerText = "Approved Documents" Then
            bindDocuments("Approved")
        ElseIf lblDoc.InnerText = "Pending Documents" Then
            bindDocuments("Pending")
        ElseIf lblDoc.InnerText = "Withdrawn Documents" Then
            bindDocuments("Withdrawn")
        End If

    End Sub


    Protected Sub gvDocuments_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim selectedID As Integer = e.CommandArgument
        Dim dtDoc As DataTable = ViewState("dt_doc")
        Dim docID As String = dtDoc.Rows(selectedID).Item("docID")
        Dim docRevisionID As String = dtDoc.Rows(selectedID).Item("docRevisionID")
        Dim conn As MySqlConnection = Session("conn")

        Dim dt As DataTable = DataModel.getDocPath(docID, docRevisionID, conn)

        If e.CommandName = "View" Then

            Session("doc_path") = dt
            Session("doc_details") = dtDoc.Rows(selectedID)
            Session("from") = "DP"
            Response.Redirect("viewDocument.aspx")


        ElseIf e.CommandName = "AuditTemplate" Then
            'Download file
            downloadFile(dt.Rows(0).Item("Audit"))
        ElseIf e.CommandName = "AuditDocument" Then
            'Download file
            downloadFile(dt.Rows(0).Item("Document"))

        End If
    End Sub

    Protected Sub gvDocuments_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        Dim index As Integer = 0
        If e.Row.RowType.Equals(DataControlRowType.DataRow) Then
            For Each cell In e.Row.Cells
                index += 1
                Dim s As String = cell.Text
                If s.Length > 35 Then
                    cell.text = s.Substring(0, 35) + "..."
                    cell.toolTip = s
                End If
            Next
        End If
    End Sub



#End Region


#Region "Request a Change"


    Protected Sub listApprovedDocuments()

        Dim conn As MySqlConnection = Session("conn")
        Dim docIssuerCompany As String = Session("company")
        Dim dt = DataModel.listApprovedDocs(docIssuerCompany, conn)

        ddlReqChangeDoc.Items.Clear()
        Dim index As Integer = 0
        For Each row In dt.Rows

            Dim docID As String = dt.Rows(index).Item("docID").ToString
            Dim docRevisionID As String = dt.Rows(index).Item("docRevisionID").ToString
            Dim docName As String = dt.Rows(index).Item("docName").ToString
            Dim docRevisionNum As Integer = Integer.Parse(dt.Rows(index).Item("docRevisionNum"))

            ddlReqChangeDoc.Items.Add(New ListItem(docName & " - Revision " & docRevisionNum.ToString, docID & "," & docRevisionID))
            index += 1
        Next

    End Sub

    Protected Sub createRequest()

        Dim errMessage As String = String.Empty
        Dim conn As MySqlConnection = Session("conn")
        Dim docReqChangeID As String = Guid.NewGuid.ToString

        Dim arrIDs As String() = ddlReqChangeDoc.SelectedValue.ToString.Split(",")
        Dim docID As String = arrIDs(0)
        Dim docRevisionID As String = arrIDs(1)
        Dim docRequestFrom As String = Session("user_id")
        Dim docRequestComments As String = txtReqChangeDesc.InnerText.ToString
        Dim docRequestStatus As String = "Pending"
        Dim docRequestType As String = "Admin"
        Dim docReqPath As String = "NULL"
        If upReqChangeFile.HasFile Then
            Try
                docReqPath = ID.Substring(0, 9) & upReqChangeFile.FileName.ToString
                upReqChangeFile.SaveAs(Server.MapPath("../Files/" & docReqPath))
            Catch ex As Exception
                errMessage = ex.Message.ToString
            End Try
        End If


        errMessage = DataModel.insertDocReqChange(docReqChangeID, docID, docRequestFrom, docRequestComments, docReqPath, docRevisionID, docRequestStatus, docRequestType, conn)
        errMessage = DataModel.insertDocIssuedToAdmin(docID, docRevisionID, docReqChangeID, conn)
    End Sub


    Protected Sub btnSubmitRequest_Click(sender As Object, e As EventArgs)
        createRequest()
    End Sub






#End Region

End Class