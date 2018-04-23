Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxTabControl
Imports DevExpress.Xpo
Imports System.Drawing
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors
Imports System.Collections.Generic
Imports DevExpress.Data
Imports DevExpress.Web.ASPxDataView
Imports System.Collections

Partial Public Class Validate_Edit_Form
	Inherits System.Web.UI.Page
	Protected Sub grid_CellEditorInitialize(ByVal sender As Object, ByVal e As ASPxGridViewEditorEventArgs)
		If e.Column.FieldName = "max_lvl" Then
			 Dim editor As ASPxTextBox = TryCast(e.Editor, ASPxTextBox)
			 editor.ValidationSettings.RequiredField.IsRequired = True
		End If
	End Sub
End Class
