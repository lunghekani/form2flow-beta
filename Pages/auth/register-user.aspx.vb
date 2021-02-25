Public Class register_user
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            mvRegisterUser.SetActiveView(viewAccountDetails)
        End If

    End Sub


#Region "Navigational Buttons"

    Protected Sub btnBackToLogin_Click(sender As Object, e As EventArgs)
        Response.Redirect("index.aspx")
    End Sub

    Protected Sub btnToScreen2_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewJobDetails)
        setClassForTabButtons(btnGoToJobDetails, btnGoToAccDetails, btnGoToCommDetails, btnGoToSysPermissionDetails)
    End Sub

    Protected Sub btnBackToScreen1_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewAccountDetails)
        setClassForTabButtons(btnGoToAccDetails, btnGoToJobDetails, btnGoToCommDetails, btnGoToSysPermissionDetails)
    End Sub

    Protected Sub btnToScreen3_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewCommunicationDetails)
        setClassForTabButtons(btnGoToCommDetails, btnGoToAccDetails, btnGoToJobDetails, btnGoToSysPermissionDetails)
    End Sub

    Protected Sub btnToScreen4_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewSystemPermissionDetails)
        setClassForTabButtons(btnGoToSysPermissionDetails, btnGoToAccDetails, btnGoToCommDetails, btnGoToJobDetails)
    End Sub

    Protected Sub btnNoUser_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("index.aspx")
    End Sub

    Protected Sub btnYesUser_Click(sender As Object, e As EventArgs)
        mvRegisterUser.SetActiveView(viewAccountDetails)
    End Sub

    Public Shared Sub setClassForTabButtons(ByVal activeBtn As HtmlButton, ByVal naBtn1 As HtmlButton, naBtn2 As HtmlButton, naBtn3 As HtmlButton)
        activeBtn.Attributes("class") = "btn btn-primary btn-block cancel"
        naBtn1.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn2.Attributes("class") = "btn btn-link btn-block cancel"
        naBtn3.Attributes("class") = "btn btn-link btn-block cancel"
    End Sub

#End Region

#Region "Populate Dropdowns"



#End Region


    Protected Sub btnRegisterHeadOffice_Click(sender As Object, e As EventArgs)
        'To Do
        'Register Head Office
        mvRegisterUser.SetActiveView(viewIsThereRegionalOffices)
    End Sub


End Class