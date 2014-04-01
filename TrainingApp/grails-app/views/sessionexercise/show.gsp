
<%@ page import="uk.ac.shu.webarch.trainingapp.Sessionexercise" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sessionexercise.label', default: 'Sessionexercise')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sessionexercise" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sessionexercise" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sessionexercise">
			
				<g:if test="${sessionexerciseInstance?.exerciseName}">
				<li class="fieldcontain">
					<span id="exerciseName-label" class="property-label"><g:message code="sessionexercise.exerciseName.label" default="Exercise Name" /></span>
					
						<span class="property-value" aria-labelledby="exerciseName-label"><g:link controller="exercise" action="show" id="${sessionexerciseInstance?.exerciseName?.id}">${sessionexerciseInstance?.exerciseName?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionexerciseInstance?.reps}">
				<li class="fieldcontain">
					<span id="reps-label" class="property-label"><g:message code="sessionexercise.reps.label" default="Reps" /></span>
					
						<span class="property-value" aria-labelledby="reps-label"><g:fieldValue bean="${sessionexerciseInstance}" field="reps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionexerciseInstance?.sessionID}">
				<li class="fieldcontain">
					<span id="sessionID-label" class="property-label"><g:message code="sessionexercise.sessionID.label" default="Session ID" /></span>
					
						<span class="property-value" aria-labelledby="sessionID-label"><g:link controller="trainingsession" action="show" id="${sessionexerciseInstance?.sessionID?.id}">${sessionexerciseInstance?.sessionID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionexerciseInstance?.setNo}">
				<li class="fieldcontain">
					<span id="setNo-label" class="property-label"><g:message code="sessionexercise.setNo.label" default="Set No" /></span>
					
						<span class="property-value" aria-labelledby="setNo-label"><g:fieldValue bean="${sessionexerciseInstance}" field="setNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionexerciseInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="sessionexercise.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${sessionexerciseInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sessionexerciseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sessionexerciseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
