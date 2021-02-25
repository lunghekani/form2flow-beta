Imports MySql.Data.MySqlClient
Public Class admin_course_add
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' populateDdlCategory() 'you need to get the categories from chris
        'populate NQF Level
        'populate certification dropdown
    End Sub
#Region "Submit Button"
    Protected Sub btnAddCourse_Click(sender As Object, e As EventArgs)
        Dim accessRetained As Integer = 1
        ' Dim adminID As String = Session("user_id").ToString

        Dim conn As MySqlConnection = index.setConn("lms") ' setting the connection string
        Dim certification As Integer = 1 ' this is back checked against the list you need from chris
        Dim courseID As String = Guid.NewGuid.ToString ' Check with chris , disabled this because course is auto incremented
        Dim courseCategory As Integer = 1
        Dim courseDesc As String = txtDescr.Value.ToString.Trim
        Dim courseDuration As Integer = txtDuration.Value.ToString.Trim
        Dim courseName As String = txtCourseName.Value.ToString.Trim
        Dim courseNQFLevel As Integer = 1
        Dim courseStatus As Integer = 0
        Dim msg As String = String.Empty

        ' Checking if the course the user has entered exits
        Dim courseExists As Boolean = database_operations.doesFieldExistInTable("CourseName", courseName, "courses", conn)
        If courseExists Then
            lblError.Visible = True
            lblError.ForeColor = Drawing.Color.Red
            lblError.Text = "The name of this course is not available, please choose another name"
            Exit Sub

        End If
        ' Checking the radios and checkboxes
        If rdbStatus.Checked Then
            courseStatus = 1
        Else
            courseStatus = 0

        End If
        If chkRetainAccess.Checked Then
            accessRetained = 1
        Else
            accessRetained = 0

        End If

        ' this is probably where the stored procedures come in
        msg = Courses.setCourseDetails(courseID, courseName, courseCategory, courseDesc, courseStatus, courseDuration, certification, courseNQFLevel)

        If msg.Equals("Success") Then
            'ask what typically goes here

        Else
            lblError.Text = msg
        End If
    End Sub
#End Region
#Region "Populating the dropdowns"
    Protected Sub populateDdlCertification(ByVal certification As String)
        ' ask about what value objects are and
        Dim dt As DataTable = Courses.getCertificationAll()
        ddlCertficate.Items.Clear()

        For row = 1 To dt.Rows.Count - 1
            ddlCertficate.Items.Add(New ListItem(dt.Rows(row).Item("Name"), (dt.Rows(row).Item("ID"))))
        Next
    End Sub

    Protected Sub populateDdlCategory()
        ' ask about what value objects are and why the one below flags an error
        Dim dt As DataTable = Courses.getCategories()
        ddlCategory.Items.Clear()

        For row = 1 To dt.Rows.Count - 1
            ddlCategory.Items.Add(New ListItem(dt.Rows(row).Item("ID"), dt.Rows(row).Item("Name")))
        Next
    End Sub

    Protected Sub populateDdlLevel()
        ' ask about what value objects are and why the one below flags an error
        Dim dt As DataTable = Courses.getLevel()
        ddlNQFLevel.Items.Clear()

        For row = 1 To dt.Rows.Count - 1
            ddlNQFLevel.Items.Add(New ListItem(dt.Rows(row).Item("ID"), dt.Rows(row).Item("Name")))
        Next
    End Sub
#End Region
End Class