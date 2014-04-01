
<%@ page import="uk.ac.shu.webarch.trainingapp.Trainingsession" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingsession.label', default: 'Trainingsession')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trainingsession" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trainingsession" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trainingsession">
			
				<g:if test="${trainingsessionInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="trainingsession.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${trainingsessionInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingsessionInstance?.sessionExercise}">
				<li class="fieldcontain">
					<span id="sessionExercise-label" class="property-label"><g:message code="trainingsession.sessionExercise.label" default="Session Exercise" /></span>
					
						<g:each in="${trainingsessionInstance.sessionExercise}" var="s">
						<span class="property-value" aria-labelledby="sessionExercise-label"><g:link controller="sessionexercise" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${trainingsessionInstance?.sessionID}">
				<li class="fieldcontain">
					<span id="sessionID-label" class="property-label"><g:message code="trainingsession.sessionID.label" default="Session ID" /></span>
					
						<span class="property-value" aria-labelledby="sessionID-label"><g:fieldValue bean="${trainingsessionInstance}" field="sessionID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingsessionInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="trainingsession.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:link controller="user" action="show" id="${trainingsessionInstance?.username?.id}">${trainingsessionInstance?.username?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:trainingsessionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${trainingsessionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
