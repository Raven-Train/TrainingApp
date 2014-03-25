
<%@ page import="uk.ac.shu.webarch.trainingapp.TrainingSession" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingSession.label', default: 'TrainingSession')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trainingSession" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trainingSession" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trainingSession">
			
				<g:if test="${trainingSessionInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="trainingSession.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${trainingSessionInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingSessionInstance?.sessionExercise}">
				<li class="fieldcontain">
					<span id="sessionExercise-label" class="property-label"><g:message code="trainingSession.sessionExercise.label" default="Session Exercise" /></span>
					
						<g:each in="${trainingSessionInstance.sessionExercise}" var="s">
						<span class="property-value" aria-labelledby="sessionExercise-label"><g:link controller="sessionexercise" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${trainingSessionInstance?.sessionID}">
				<li class="fieldcontain">
					<span id="sessionID-label" class="property-label"><g:message code="trainingSession.sessionID.label" default="Session ID" /></span>
					
						<span class="property-value" aria-labelledby="sessionID-label"><g:fieldValue bean="${trainingSessionInstance}" field="sessionID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingSessionInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="trainingSession.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:link controller="user" action="show" id="${trainingSessionInstance?.username?.id}">${trainingSessionInstance?.username?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:trainingSessionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${trainingSessionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
