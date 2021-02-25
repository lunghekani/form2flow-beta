Imports MySql.Data.MySqlClient

Public Class index
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            setConn("users")
        End If


    End Sub

    Public Shared Function setConn(ByVal dbname As String) As MySqlConnection
        'Local Conn
        'Dim connString As String = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=" & dbname & ""

        'Afrihost Server Conn
        Dim connString As String = "server=154.0.175.165;user id=RED;password=UeJZ3M&X+835(TpP;port=50001;persistsecurityinfo=True;database=dbname_" & dbname & ""
        'Dim connString As String = "server=154.0.175.165;user id=Safwaan;password=aUH^ZYaV6jWU{F7A;persistsecurityinfo=True;port=50001;database=" & dbname & ""

        Dim conn As MySqlConnection = DBInterface.connectToMySQL(connString)
        HttpContext.Current.Session("conn") = conn
        Return conn
    End Function

    Protected Sub btnLogin_onServerClick(sender As Object, e As EventArgs)

        'mockLogin()
        Dim conn As MySqlConnection = setConn("users")

        Dim username, password As String
        username = txtEmail.Value.ToString.ToLower.Trim
        password = txtPassword.Value.ToString.Trim
        password = genfunctions.stringToMD5(password)

        Dim userExists As Boolean = database_operations.doesFieldExistInTable("UserName", username, "user_names", conn)
        If userExists = False Then
            lblError.Visible = True
            lblError.Text = "The username you entered does not exist."
            Exit Sub
        End If

        Dim message As String = DataModel.AuthenticateUser(username, password, conn)

        If message.Equals("Success") Then
            Response.Redirect("../main/main-dashboard.aspx")
        Else
            lblError.Visible = True
            lblError.Text = "The password you entered is incorrect."
            Exit Sub
        End If

    End Sub



    Protected Sub mockLogin()

        Session("comp_id") = "1"
        Session("loc_id") = "1"
        Session("user_id") = "1"
        Session("job_title") = "Super Admin"
        Response.Redirect("../dashboard/main.aspx")
    End Sub

End Class