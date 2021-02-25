Public Class main
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            setDashboard()
        End If
    End Sub

    Protected Sub setDashboard()
        Dim fullName As String = Session("fullname")
        If fullName.Equals("Super Admin") Then
            dvInst.Visible = True
            dvProfile.Visible = False
        Else
            dvInst.Visible = False
            dvProfile.Visible = True
        End If

    End Sub

End Class