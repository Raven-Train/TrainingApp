
<%@ page import="uk.ac.shu.webarch.trainingapp.Exercise" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'exercise.label', default: 'Exercise')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-exercise" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-exercise" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list exercise">
			
				<g:if test="${exerciseInstance?.bodyPart}">
				<li class="fieldcontain">
					<span id="bodyPart-label" class="property-label"><g:message code="exercise.bodyPart.label" default="Body Part" /></span>
					
						<span class="property-value" aria-labelledby="bodyPart-label"><g:fieldValue bean="${exerciseInstance}" field="bodyPart"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${exerciseInstance?.equipment}">
				<li class="fieldcontain">
					<span id="equipment-label" class="property-label"><g:message code="exercise.equipment.label" default="Equipment" /></span>
					
						<span class="property-value" aria-labelledby="equipment-label"><g:fieldValue bean="${exerciseInstance}" field="equipment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${exerciseInstance?.exerciseName}">
				<li class="fieldcontain">
					<span id="exerciseName-label" class="property-label"><g:message code="exercise.exerciseName.label" default="Exercise Name" /></span>
					
						<span class="property-value" aria-labelledby="exerciseName-label"><g:fieldValue bean="${exerciseInstance}" field="exerciseName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${exerciseInstance?.goalWeight}">
				<li class="fieldcontain">
					<span id="goalWeight-label" class="property-label"><g:message code="exercise.goalWeight.label" default="Goal Weight" /></span>
					
						<span class="property-value" aria-labelledby="goalWeight-label"><g:fieldValue bean="${exerciseInstance}" field="goalWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${exerciseInstance?.improvement}">
				<li class="fieldcontain">
					<span id="improvement-label" class="property-label"><g:message code="exercise.improvement.label" default="Improvement" /></span>
					
						<span class="property-value" aria-labelledby="improvement-label"><g:fieldValue bean="${exerciseInstance}" field="improvement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${exerciseInstance?.percentage}">
				<li class="fieldcontain">
					<span id="percentage-label" class="property-label"><g:message code="exercise.percentage.label" default="Percentage" /></span>
					
						<span class="property-value" aria-labelledby="percentage-label"><g:fieldValue bean="${exerciseInstance}" field="percentage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${exerciseInstance?.sessionExercise}">
				<li class="fieldcontain">
					<span id="sessionExercise-label" class="property-label"><g:message code="exercise.sessionExercise.label" default="Session Exercise" /></span>
					
						<g:each in="${exerciseInstance.sessionExercise}" var="s">
						<span class="property-value" aria-labelledby="sessionExercise-label"><g:link controller="sessionexercise" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:exerciseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${exerciseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
