Public Class learner_appeal_info
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            txtCourse.Value = "Web Development with ASP.NET"
            txtAssessor.Value = "Prof. K Njenga"
            txtCategory.Value = "Web Development"
            txtStatus.Value = "Unresolved"
            txtStage.Value = "2"
            txtLearnerAppealDescr.Value = "The assessor marks me unfairly because I support Manchester United"
            txtAssessorAppealDescr.Value = "That is untrue"
            txtStepsTakenAssessor.Value = "Compared the marks to other learners"
            txtStepsTakenManagement.Value = "Confirmed the learner is being marked appropriately."
            'txtStepsTakenExecutive.Value = "Satisfied with the steps take, closing the appeal."


        End If
    End Sub


    Protected Sub BtnReturn_Click(sender As Object, e As EventArgs)
        Response.Redirect("learner-appeal-list.aspx")
    End Sub


    Protected Sub DownloadDoc_ServerClick(sender As Object, e As EventArgs)

        Dim fileName As String = txtSupportingDoc.Value.ToString
        downloadFile(fileName)

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

End Class