
<%@ page import="uk.ac.shu.webarch.trainingapp.Trainingsession" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingsession.label', default: 'Trainingsession')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trainingsession" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trainingsession" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="date" title="${message(code: 'trainingsession.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="sessionID" title="${message(code: 'trainingsession.sessionID.label', default: 'Session ID')}" />
					
						<th><g:message code="trainingsession.username.label" default="Username" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingsessionInstanceList}" status="i" var="trainingsessionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingsessionInstance.id}">${fieldValue(bean: trainingsessionInstance, field: "date")}</g:link></td>
					
						<td>${fieldValue(bean: trainingsessionInstance, field: "sessionID")}</td>
					
						<td>${fieldValue(bean: trainingsessionInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingsessionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
