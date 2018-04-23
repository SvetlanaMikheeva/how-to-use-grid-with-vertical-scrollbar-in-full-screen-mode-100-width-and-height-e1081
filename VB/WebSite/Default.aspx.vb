Imports Microsoft.VisualBasic
Imports System

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		DevExpress.Web.ASPxClasses.ASPxWebControl.RegisterUtilsScript(Page) 'ASPxClientUtils
	End Sub
End Class