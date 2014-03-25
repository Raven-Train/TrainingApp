<%@ page import="uk.ac.shu.webarch.trainingapp.TrainingSession" %>



<div class="fieldcontain ${hasErrors(bean: trainingSessionInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="trainingSession.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${trainingSessionInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: trainingSessionInstance, field: 'sessionExercise', 'error')} ">
	<label for="sessionExercise">
		<g:message code="trainingSession.sessionExercise.label" default="Session Exercise" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${trainingSessionInstance?.sessionExercise?}" var="s">
    <li><g:link controller="sessionexercise" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sessionexercise" action="create" params="['trainingSession.id': trainingSessionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sessionexercise.label', default: 'Sessionexercise')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingSessionInstance, field: 'sessionID', 'error')} ">
	<label for="sessionID">
		<g:message code="trainingSession.sessionID.label" default="Session ID" />
		
	</label>
	<g:textField name="sessionID" value="${trainingSessionInstance?.sessionID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingSessionInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="trainingSession.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="username" name="username.id" from="${uk.ac.shu.webarch.trainingapp.User.list()}" optionKey="id" required="" value="${trainingSessionInstance?.username?.id}" class="many-to-one"/>
</div>

