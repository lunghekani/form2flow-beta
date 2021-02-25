Imports Microsoft.VisualBasic

Public Class DatabaseConnectException
    Inherits Exception
    Sub New(ByVal ex As Exception)
		MyBase.new("Could not connect to database.", ex)
    End Sub
End Class
