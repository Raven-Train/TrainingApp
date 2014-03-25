
<%@ page import="uk.ac.shu.webarch.trainingapp.TrainingSession" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingSession.label', default: 'TrainingSession')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trainingSession" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trainingSession" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="date" title="${message(code: 'trainingSession.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="sessionID" title="${message(code: 'trainingSession.sessionID.label', default: 'Session ID')}" />
					
						<th><g:message code="trainingSession.username.label" default="Username" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingSessionInstanceList}" status="i" var="trainingSessionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingSessionInstance.id}">${fieldValue(bean: trainingSessionInstance, field: "date")}</g:link></td>
					
						<td>${fieldValue(bean: trainingSessionInstance, field: "sessionID")}</td>
					
						<td>${fieldValue(bean: trainingSessionInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingSessionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
