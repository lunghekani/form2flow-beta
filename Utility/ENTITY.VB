Imports Microsoft.VisualBasic

Public Class ENTITY

    Shared Function checkNull(ByVal val As Object) As Object
        If IsDBNull(val) Then
            Return Nothing
        Else
            Return val
        End If

    End Function
    Shared Function setNull(ByVal val As Object) As Object
        If val Is Nothing Then
            Return DBNull.Value
        Else
            Return val
        End If

    End Function
    Shared Function getConnection() As System.Data.SqlClient.SqlConnection
        If HttpContext.Current Is Nothing Then
            Return genfunctions.eod_conn
        Else
            Return HttpContext.Current.Session("conn")
        End If

    End Function
    Shared Function getTransaction() As System.Data.SqlClient.SqlTransaction
        If HttpContext.Current Is Nothing Then
            Return genfunctions.eod_trans
        Else
            Return HttpContext.Current.Session("trans")
        End If

    End Function
End Class
