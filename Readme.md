# Client-side appointment form for shared resources


<p>This example illustrates how to create an appointment editing form for resource sharing mode using client-side scripting.</p><p>In this example, popup menu commands are intercepted by JavaScript functions, which create the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientAppointmentMembersTopicAll">ASPxClientAppointment</a> for the selected interval and resource or use the client Scheduler’s <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientScheduler_GetSelectedAppointmentIdstopic">GetSelectedAppointmentIds</a> and <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientScheduler_GetAppointmentByIdtopic">GetAppointmentById</a> methods to obtain the client appointment. After that, the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientScheduler_RefreshClientAppointmentPropertiestopic">RefreshClientAppointmentProperties</a> method updates the client appointment properties and invokes the scripting appointment form.</p><p>The scripting appointment editing form consists of two templates – <strong>ScriptAppointmentForm.ascx</strong> and <strong>ScriptRecurrenceForm.ascx</strong>. Their code implements the logic required to populate the form’s controls and update the appointment with new values. The <strong>ASPxDropDownEdit</strong> control with incorporated <strong>ASPxListBox</strong> control is used to display a  list of resources.  It enables the user to select multiple resource in a drop-down list with checkboxes. <br />
When the button on the form is pressed, one of the following methods of the client scheduler: UpdateAppointment, InsertAppointment, or DeleteAppointment, is called. This method performs a callback using information contained in the client appointment. The appointment is then processed on the server.</p><p>Note that ASPxScheduler versions prior to 9.2.10 demonstrates erroneous behavior of the client-side appointment form concerning the recurrence pattern. Custom fields are not updated when the client form is invoked to edit the series. It is reported as issue <a href="https://www.devexpress.com/Support/Center/p/B143010">Client-side appointment editing form - Custom field isn't updated in recurrence pattern</a>.</p>


<h3>Description</h3>

<p>The HolidayBaseCollection class now resides in the DevExpress.Schedule namespace, the HolidayCollectionXmlPersistenceHelper class resides in the DevExpress.Schedule.Serializing namespace.</p>

<br/>


