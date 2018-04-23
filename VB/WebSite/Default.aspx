<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="Validate_Edit_Form" %>

<%-- BeginRegion Page setup --%>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v7.3"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v7.3"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v7.3" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v7.3" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to validate EditForm editors</title>
</head>
<body>
	<form id="form1" runat="server">

		&nbsp; &nbsp;&nbsp;
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
			SelectCommand="SELECT * FROM [jobs]" DeleteCommand="DELETE FROM [jobs] WHERE [job_id] = ?" InsertCommand="INSERT INTO [jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (?, ?, ?, ?)" UpdateCommand="UPDATE [jobs] SET [job_desc] = ?, [min_lvl] = ?, [max_lvl] = ? WHERE [job_id] = ?">
			<DeleteParameters>
				<asp:Parameter Name="job_id" Type="Int16" />
			</DeleteParameters>
			<UpdateParameters>
				<asp:Parameter Name="job_desc" Type="String" />
				<asp:Parameter Name="min_lvl" Type="Byte" />
				<asp:Parameter Name="max_lvl" Type="Byte" />
				<asp:Parameter Name="job_id" Type="Int16" />
			</UpdateParameters>
			<InsertParameters>
				<asp:Parameter Name="job_id" Type="Int16" />
				<asp:Parameter Name="job_desc" Type="String" />
				<asp:Parameter Name="min_lvl" Type="Byte" />
				<asp:Parameter Name="max_lvl" Type="Byte" />
			</InsertParameters>
		</asp:AccessDataSource>
		&nbsp; &nbsp;&nbsp;
		<dxwgv:ASPxGridView ID="grid" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="job_id" ClientInstanceName="grid" OnCellEditorInitialize="grid_CellEditorInitialize">
			<Columns>
				<dxwgv:GridViewCommandColumn VisibleIndex="0">
					<DeleteButton Visible="True">
					</DeleteButton>
					<EditButton Visible="True">
					</EditButton>
				</dxwgv:GridViewCommandColumn>
				<dxwgv:GridViewDataTextColumn Caption="job_id" FieldName="job_id" ReadOnly="True"
					VisibleIndex="1">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn Caption="job_desc" FieldName="job_desc" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn Caption="min_lvl" FieldName="min_lvl" VisibleIndex="3">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn Caption="max_lvl" FieldName="max_lvl" VisibleIndex="4">
				</dxwgv:GridViewDataTextColumn>
			</Columns>
			<SettingsBehavior AllowFocusedRow="True" />
			<Settings ShowGroupPanel="True"/>
		</dxwgv:ASPxGridView>
	</form>

</body>
</html>