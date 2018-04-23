<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultObjectDataSource.ascx.cs" Inherits="DefaultObjectDataSource" %>
<asp:ObjectDataSource ID="temporaryAppointmentDataSource" runat="server" DataObjectTypeName="CustomEvent" TypeName="CustomEventDataSource" DeleteMethod="DeleteMethodHandler" SelectMethod="SelectMethodHandler" InsertMethod="InsertMethodHandler" OnObjectCreated="temporaryAppointmentDataSource_ObjectCreated" UpdateMethod="UpdateMethodHandler">
</asp:ObjectDataSource>

<asp:ObjectDataSource ID="temporaryResourceDataSource" runat="server" DataObjectTypeName="CustomResource" TypeName="CustomResourceDataSource" DeleteMethod="DeleteMethodHandler" SelectMethod="SelectMethodHandler" InsertMethod="InsertMethodHandler" OnObjectCreated="temporaryResourceDataSource_ObjectCreated" UpdateMethod="UpdateMethodHandler">
</asp:ObjectDataSource>