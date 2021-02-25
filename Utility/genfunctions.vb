Imports System.Xml
Imports System.Xml.Serialization
Imports System.Net.Mail
Imports System.Data.SqlClient
'Imports CrystalDecisions.CrystalReports.Engine
'Imports CrystalDecisions.Shared
'Imports System.ServiceModel.Web
'Imports Microsoft.Office.Interop.Excel
'Imports Microsoft.Office.Interop
Imports System.IO
Imports Microsoft.VisualBasic.FileIO
Imports Newtonsoft.Json
Imports Formatting = Newtonsoft.Json.Formatting
Imports System.Runtime.InteropServices
Imports Microsoft.Ajax.Utilities
Imports System.Security.Cryptography
Imports System.Web.Security

Public Class genfunctions
    Public Shared dtsettings As New DataSet
    Public Shared apppath As String
    Public Shared connectstr As String
    Public Shared eod_report As String
    Public Shared eod_user As String
    Public Shared eod_running As Boolean
    Public Shared eod_conn As SqlConnection
    Public Shared eod_trans As SqlTransaction
    Public Shared eod_percent_done As Decimal
    Public Shared CSV_dir As String = HttpContext.Current.Server.MapPath("CSV")
    Public Shared country_ids As New ArrayList

    Shared Sub initi(ByVal apppath As String)
        Try
            genfunctions.apppath = apppath
            genfunctions.dtsettings.ReadXmlSchema(apppath & "\" & "appsettings.xsd")
            genfunctions.dtsettings.ReadXml(apppath & "\" & "appsettings.xml")
            connectstr = "Data Source=" & dtsettings.Tables("gensettings").Rows(0)("dbserver") & ";Initial Catalog=" & dtsettings.Tables("gensettings").Rows(0)("dbname") & ";Persist Security Info=True;"
            connectstr = connectstr & "User ID=" & dtsettings.Tables("gensettings").Rows(0)("dbuserid") & ";"
            Dim password As String = dtsettings.Tables("gensettings").Rows(0)("dbpassword")
            connectstr = connectstr & "Password=" & password & ";"

        Catch ex As Exception
            LogException(ex)
        End Try
    End Sub
    Public Shared Sub LogException(ByVal ex As Exception)
        Dim nrow As DataRow = dtsettings.Tables("exceptions").NewRow()
        nrow("DATA") = ex.ToString
        nrow("DATETIMEOCCURED") = Now
        If Not ex.InnerException Is Nothing Then
            nrow("INNEREXCEPTION_DATA") = ex.InnerException.ToString
        End If
        dtsettings.Tables("exceptions").Rows.Add(nrow)
        dtsettings.WriteXml(apppath & "\" & "appsettings.xml")
    End Sub



    Shared Sub SendEmail(ByVal mailto As String, ByVal subject As String, ByVal body As String)
        Dim smtpservername As String = "smtp.gmail.com"
        Dim smtpserverport As String = "587 "
        Dim smtpfrom As String = "dev.red.za@gmail.com"

        Dim smail As New SmtpClient
        smail.Port = smtpserverport

        smail.Host = smtpservername
        smail.EnableSsl = True
        smail.Credentials = New System.Net.NetworkCredential(smtpfrom, "qiogevjufqcvuasf")
        smail.Send(smtpfrom, mailto, subject, body)
    End Sub

    Shared Sub SendEmailWithAttachment(ByVal mailto As String, ByVal cc As String, ByVal bcc As String, ByVal subject As String, ByVal body As String, ByVal attachments As Generic.List(Of String))
        Dim smail As New SmtpClient, i As Integer
        Dim smessage As New MailMessage
        If Not attachments Is Nothing Then
            For i = 0 To attachments.Count - 1
                smessage.Attachments.Add(New Attachment(attachments(i)))
            Next
        End If

        smail.Port = dtsettings.Tables("mailsettings").Rows(0)("smtpserverport")
        smail.Host = dtsettings.Tables("mailsettings").Rows(0)("smtpserverip")
        'smail.UseDefaultCredentials = False
        'smail.EnableSsl = True

        smail.DeliveryMethod = SmtpDeliveryMethod.Network
        smail.Credentials = New System.Net.NetworkCredential("email", "qiogevjufqcvuasf")
        smessage.Body = body
        smessage.To.Add(mailto)
        If Not (ENTITY.checkNull(bcc) Is Nothing) Then
            smessage.Bcc.Add(bcc)
        End If
        If Not (ENTITY.checkNull(bcc) Is Nothing) Then
            smessage.CC.Add(cc)
        End If
        smessage.From = New System.Net.Mail.MailAddress(dtsettings.Tables("mailsettings").Rows(0)("replyto"), dtsettings.Tables("mailsettings").Rows(0)("smtpfrom"))
        smessage.IsBodyHtml = False
        smessage.Subject = subject
        smessage.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess

        smail.Send(smessage)
        smessage.Dispose()
    End Sub

    Public Shared Function SerializeToXml(obj As ArrayList) As String
        Dim retval As String = ""
        Dim xsSubmit As New XmlSerializer(GetType(ArrayList))
        Dim sww As New StringWriter
        Dim writer As XmlWriter = XmlWriter.Create(sww)

        Using (sww)
            Using (writer)
                xsSubmit.Serialize(writer, obj)
                retval = sww.ToString
            End Using
        End Using
        Return retval
    End Function

    Public Shared Function DeserializeXml(str As String) As ArrayList

        Dim serializer As New XmlSerializer(GetType(ArrayList))
        Dim reader As XmlReader
        reader = XmlReader.Create(New StringReader(str))
        Dim retval As New ArrayList

        retval = serializer.Deserialize(reader)
        reader.Close()

        Return retval

    End Function

    Public Shared Function validateID(sID) As Boolean
        'If (sID.ToString().Length = 13) Then
        '    'Dim validateSAID As Regex = New Regex("(((\ d{2}((0[13578]|1[02])(0[1-9]|[12]\d|3[01])|(0[13456789]|1[012])(0[1-9]|[12]\d|30)|02(0[1-9]|1\d|2[0-8])))|([02468][048]|[13579][26])0229))(( |-)(\d{4})( |-)(\d{3})|(\d{7}))")
        '    'If validateSAID.IsMatch(sID) Then
        '    '    Return True
        '    'Else
        '    '    Return False
        '    'End If
        '    Return True
        'Else
        '    Return False

        'End If
        If (sID.ToString.Length = 13) Then
            Try
                Dim a As Integer = 0
                For i As Integer = 0 To 5
                    a += CInt(sID.Substring(i * 2, 1))
                Next

                Dim b As Integer = 0
                For i As Integer = 0 To 5
                    b = b * 10 + CInt(sID.Substring(2 * i + 1, 1))
                Next
                b *= 2
                Dim c As Integer = 0
                Do
                    c += b Mod 10
                    b = Int(b / 10)
                Loop Until b <= 0
                c += a
                Dim d As Integer = 0
                d = 10 - (c Mod 10)
                If (d = 10) Then d = 0
                If d = CInt(sID.Substring(12, 1)) Then
                    Return True
                Else
                    Return False
                End If
            Catch ex As Exception
                Return False
            End Try
        Else
            Return False

        End If

    End Function


    Public Shared Function IDNumToDOB(id_num As String) As Date
        Dim yy As Integer = Integer.Parse(id_num.Substring(0, 2))
        Dim year As String
        If yy > 0 And yy < Date.Now.Year.ToString.Substring(2, 2) Then
            year = "20"
        Else
            year = "19"
        End If
        year += id_num.Substring(0, 2)

        Dim retval As Date = New Date(year, id_num.Substring(2, 2), id_num.Substring(4, 2))

        Return retval

    End Function

    'To be used for Passwords
    Public Shared Function stringToMD5(ByVal source As String) As String
        Dim Bytes() As Byte
        Dim sb As New StringBuilder
        If String.IsNullOrEmpty(source) Then
            Throw New ArgumentNullException
        End If
        Bytes = Encoding.Default.GetBytes(source)
        Bytes = MD5.Create().ComputeHash(Bytes)
        For i As Integer = 0 To Bytes.Length - 1
            sb.Append(Bytes(i).ToString("x2"))
        Next
        Return sb.ToString
    End Function

    Public Shared Function genPassword() As String
        Dim password As String = Membership.GeneratePassword(8, 0)
        MsgBox(password)
        Return password
    End Function

    Public Shared Sub sendRegistrationEmail(firstName As String, lastName As String, username As String, password As String, email As String)
        Dim body As New StringBuilder
        body.AppendLine("Dear " & firstName & " " & lastName).AppendLine()
        body.AppendLine("You account has been created and your credentails are as follows:").AppendLine()
        body.AppendLine("Username: " & username).AppendLine("Password: " & password).AppendLine()
        body.AppendLine("Please login in and complete your profile.").AppendLine()
        body.AppendLine("Thank you!")
        SendEmail(email, "Account Registered!", body.ToString)
    End Sub

    Public Shared Sub LoadAllCities()
        'Dim connString As String = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=users;"
        'Dim conn As sqlconnection = dbinterface.connect(connString)
        Dim path As String = "C:\Users\User\Desktop\Databases\Value Objects\Cities.csv"
        Dim data As String = File.ReadAllText(path, Encoding.Default)
        Dim indx As Integer = 1

        For Each row As String In data.Split(ControlChars.Lf)
            If Not String.IsNullOrEmpty(row) Then
                Dim split_row As Array = row.Split("|")
                Dim sql As String = "INSERT INTO users.vo_cities VALUES (" & indx & "," & split_row(1) & "," & split_row(2).ToString & ");"
                indx += 1
                database_operations.insertIntoDB(sql, HttpContext.Current.Session("conn"))
            End If
        Next
    End Sub

End Class

'Testing JSON
Public Class facilities
    Public Property name As String
    Public Property id As String
End Class

Public Class cities
    Public Property city As String
    Public province As String
End Class

Public Class users
    Public Property username As String
    Public Property pass As String
End Class