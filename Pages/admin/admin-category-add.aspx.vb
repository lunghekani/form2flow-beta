Imports MySql.Data.MySqlClient

Public Class admin_category_add
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCancel_ServerClick(sender As Object, e As EventArgs)
        Response.Redirect("admin-category-list.aspx")
    End Sub

    Protected Sub btnAddCategory_Click(sender As Object, e As EventArgs)
        Dim userId As String = "00000000000000000000000000000000000001"
        Dim compId As String = "1"
        Dim conn As MySqlConnection = index.setConn("lms")
        lblError1.Visible = False
        Dim categoryName As String = txtCategoryName.Value.ToString.Trim
        Dim categoryExists As Boolean = database_operations.doesFieldExistInTable("CategoryName", categoryName, "categories", conn)
        If categoryExists = True Then
            'Feedback to user
            lblError1.Visible = True
            lblError1.ForeColor = Drawing.Color.Red
            lblError1.Text = "This category already exists."
            Exit Sub
        Else
            Dim msg As String = ValueObjects.insertCategory(compId, categoryName, userId)
            'Feedback to user
            If msg.Equals("1") Then
                lblError1.Visible = True
                lblError1.ForeColor = Drawing.Color.Green
                lblError1.Text = categoryName & " added successfully."
                'Update the selected Item
            Else
                lblError1.Visible = True
                lblError1.ForeColor = Drawing.Color.Red
                lblError1.Text = msg
            End If
        End If
    End Sub
End Class