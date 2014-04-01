<%@ page import="uk.ac.shu.webarch.trainingapp.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="user.gender.label" default="Gender" />
		
	</label>
	<g:select name="gender" from="${userInstance.constraints.gender.inList}" value="${userInstance?.gender}" valueMessagePrefix="user.gender" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="user.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" type="number" value="${userInstance.height}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'trainingSessions', 'error')} ">
	<label for="trainingSessions">
		<g:message code="user.trainingSessions.label" default="Training Sessions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.trainingSessions?}" var="t">
    <li><g:link controller="trainingsession" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="trainingsession" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'trainingsession.label', default: 'Trainingsession')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="user.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="weight" value="${fieldValue(bean: userInstance, field: 'weight')}" required=""/>
</div>

