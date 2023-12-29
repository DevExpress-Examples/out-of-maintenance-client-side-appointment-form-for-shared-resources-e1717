<!-- default file list -->
*Files to look at*:

* [CustomAppointmentForm.cs](./CS/WebSite/App_Code/CustomAppointmentForm.cs) (VB: [CustomAppointmentForm.vb](./VB/WebSite/App_Code/CustomAppointmentForm.vb))
* [CustomEvents.cs](./CS/WebSite/App_Code/CustomEvents.cs) (VB: [CustomEvents.vb](./VB/WebSite/App_Code/CustomEvents.vb))
* [CustomResources.cs](./CS/WebSite/App_Code/CustomResources.cs) (VB: [CustomResources.vb](./VB/WebSite/App_Code/CustomResources.vb))
* [DataHelper.cs](./CS/WebSite/App_Code/DataHelper.cs) (VB: [DataHelper.vb](./VB/WebSite/App_Code/DataHelper.vb))
* [DemoUtils.cs](./CS/WebSite/App_Code/DemoUtils.cs) (VB: [DemoUtils.vb](./VB/WebSite/App_Code/DemoUtils.vb))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [DefaultObjectDataSource.ascx](./CS/WebSite/DefaultObjectDataSource.ascx) (VB: [DefaultObjectDataSource.ascx](./VB/WebSite/DefaultObjectDataSource.ascx))
* [DefaultObjectDataSource.ascx.cs](./CS/WebSite/DefaultObjectDataSource.ascx.cs) (VB: [DefaultObjectDataSource.ascx.vb](./VB/WebSite/DefaultObjectDataSource.ascx.vb))
* [ScriptAppointmentForm.ascx](./CS/WebSite/UserForms/ScriptAppointmentForm.ascx) (VB: [ScriptAppointmentForm.ascx](./VB/WebSite/UserForms/ScriptAppointmentForm.ascx))
* [ScriptAppointmentForm.ascx.cs](./CS/WebSite/UserForms/ScriptAppointmentForm.ascx.cs) (VB: [ScriptAppointmentForm.ascx.vb](./VB/WebSite/UserForms/ScriptAppointmentForm.ascx.vb))
* [ScriptRecurrenceForm.ascx](./CS/WebSite/UserForms/ScriptRecurrenceForm.ascx) (VB: [ScriptRecurrenceForm.ascx](./VB/WebSite/UserForms/ScriptRecurrenceForm.ascx))
* [ScriptRecurrenceForm.ascx.cs](./CS/WebSite/UserForms/ScriptRecurrenceForm.ascx.cs) (VB: [ScriptRecurrenceForm.ascx.vb](./VB/WebSite/UserForms/ScriptRecurrenceForm.ascx.vb))
<!-- default file list end -->
# Client-side appointment form for shared resources


<p>This example illustrates how to create an appointment editing form for resource sharing mode using client-side scripting.</p><p>In this example, popup menu commands are intercepted by JavaScript functions, which create the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientAppointmentMembersTopicAll">ASPxClientAppointment</a> for the selected interval and resource or use the client Scheduler’s <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientScheduler_GetSelectedAppointmentIdstopic">GetSelectedAppointmentIds</a> and <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientScheduler_GetAppointmentByIdtopic">GetAppointmentById</a> methods to obtain the client appointment. After that, the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientScheduler_RefreshClientAppointmentPropertiestopic">RefreshClientAppointmentProperties</a> method updates the client appointment properties and invokes the scripting appointment form.</p><p>The scripting appointment editing form consists of two templates – <strong>ScriptAppointmentForm.ascx</strong> and <strong>ScriptRecurrenceForm.ascx</strong>. Their code implements the logic required to populate the form’s controls and update the appointment with new values. The <strong>ASPxDropDownEdit</strong> control with incorporated <strong>ASPxListBox</strong> control is used to display a  list of resources.  It enables the user to select multiple resource in a drop-down list with checkboxes. <br />
When the button on the form is pressed, one of the following methods of the client scheduler: UpdateAppointment, InsertAppointment, or DeleteAppointment, is called. This method performs a callback using information contained in the client appointment. The appointment is then processed on the server.</p><p>Note that ASPxScheduler versions prior to 9.2.10 demonstrates erroneous behavior of the client-side appointment form concerning the recurrence pattern. Custom fields are not updated when the client form is invoked to edit the series. It is reported as issue <a href="https://www.devexpress.com/Support/Center/p/B143010">Client-side appointment editing form - Custom field isn't updated in recurrence pattern</a>.</p>

<br/>


