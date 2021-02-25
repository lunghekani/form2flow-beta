Imports MySql.Data.MySqlClient
Public Class facilitator_course_add
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' populateDdlCategory() 'you need to get the categories from chris
        'populate NQF Level
        'populate certification dropdown
    End Sub
#Region "Submit Button"
    Protected Sub btnAddCourse_Click(sender As Object, e As EventArgs)
        Dim accessRetained As Integer = 1
        Dim conn As MySqlConnection = index.setConn("dbname_lms") ' setting the connection string
        Dim certification As Integer
        Dim courseID As String = Guid.NewGuid.ToString ' Check with chris 
        Dim courseCategory As String = ""
        Dim courseDesc As String = txtDescr.Value.ToString.Trim
        Dim courseDuration As Integer = txtDuration.Value.ToString.Trim
        Dim courseName As String = txtCourseName.Value.ToString.Trim
        Dim courseNQFLevel As Integer = 1
        Dim courseStatus As Integer = 1
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
        cbxCertification.Items.Clear()

        For row = 1 To dt.Rows.Count - 1
            cbxCategory.Items.Add(New ListItem(dt.Rows(row).Item("Name"), (dt.Rows(row).Item("ID"))))
        Next
    End Sub

    Protected Sub populateDdlCategory()
        ' ask about what value objects are and why the one below flags an error
        Dim dt As DataTable = Courses.getCategories()
        cbxCategory.Items.Clear()

        For row = 1 To dt.Rows.Count - 1
            cbxCategory.Items.Add(New ListItem(dt.Rows(row).Item("ID"), dt.Rows(row).Item("Name")))
        Next
    End Sub

    Protected Sub populateDdlLevel()
        ' ask about what value objects are and why the one below flags an error
        Dim dt As DataTable = Courses.getLevel()
        cbxLevel.Items.Clear()

        For row = 1 To dt.Rows.Count - 1

        Next
    End Sub
#End Region
End Class