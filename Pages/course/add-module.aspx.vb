Imports MySql.Data.MySqlClient

Public Class add_module
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAddModule_Click(sender As Object, e As EventArgs)
        Dim conn As MySqlConnection = Session("conn")
        Dim msg As String = String.Empty
        ' is this the correct way of generating an ID?
        Dim moduleID As String = Guid.NewGuid.ToString
        Dim moduleName As String = txtModName.Value.ToString.Trim
        Dim description As String = txtModDescr.Value.ToString.Trim
        Dim enabled As Boolean = True
        Dim courseID As String = ""


        ' do we need to check if the moduleID exists even if it is Auto Incremented

        'msg = add_module
        If msg.Equals("Success") Then


        Else
            lblError1.Text = msg
        End If
    End Sub
End Class