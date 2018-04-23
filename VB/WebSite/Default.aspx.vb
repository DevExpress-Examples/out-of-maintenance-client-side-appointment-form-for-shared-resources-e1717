Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        DataHelper.SetupCustomEventsMappings(ASPxScheduler1)
        DataHelper.ProvideRowInsertion(ASPxScheduler1, dataSource.AppointmentDataSource)
        dataSource.AttachTo(ASPxScheduler1)
        If Not IsPostBack Then
            AppointmentForm.DataBind()
        End If
    End Sub
End Class
