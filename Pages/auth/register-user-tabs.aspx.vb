Public Class register_user_tabs
    Inherits System.Web.UI.Page

    '    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    '        If Not Page.IsPostBack Then
    '            mvRegisterUser.SetActiveView(viewAccountDetails)
    '        End If

    '    End Sub


#Region "Navigational Buttons"

    Protected Sub btnBackToLogin_Click(sender As Object, e As EventArgs)
        Response.Redirect("index.aspx")
    End Sub

    Protected Sub btnToScreen2_Click(sender As Object, e As EventArgs)
        'mvRegisterUser.SetActiveView(viewJobDetails)
    End Sub

    Protected Sub btnBackToScreen1_Click(sender As Object, e As EventArgs)
        'mvRegisterUser.SetActiveView(viewAccountDetails)
    End Sub

    Protected Sub btnToScreen3_Click(sender As Object, e As EventArgs)
        'mvRegisterUser.SetActiveView(viewCommunicationDetails)
    End Sub

    Protected Sub btnToScreen4_Click(sender As Object, e As EventArgs)
        'mvRegisterUser.SetActiveView(viewSystemPermissionDetails)
    End Sub

    Protected Sub btnNoUser_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("index.aspx")
    End Sub

    Protected Sub btnYesUser_Click(sender As Object, e As EventArgs)
        'mvRegisterUser.SetActiveView(viewAccountDetails)
    End Sub

    Protected Sub btnRegisterUser_Click(sender As Object, e As EventArgs)

    End Sub

#End Region

    '#Region "Populate Dropdowns"



    '#End Region


    '    Protected Sub btnRegisterHeadOffice_Click(sender As Object, e As EventArgs)
    '        'To Do
    '        'Register Head Office
    '        mvRegisterUser.SetActiveView(viewIsThereRegionalOffices)
    '    End Sub


End Class