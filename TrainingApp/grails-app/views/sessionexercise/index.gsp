
<%@ page import="uk.ac.shu.webarch.trainingapp.Sessionexercise" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sessionexercise.label', default: 'Sessionexercise')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sessionexercise" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sessionexercise" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="sessionexercise.exerciseName.label" default="Exercise Name" /></th>
					
						<g:sortableColumn property="reps" title="${message(code: 'sessionexercise.reps.label', default: 'Reps')}" />
					
						<th><g:message code="sessionexercise.sessionID.label" default="Session ID" /></th>
					
						<g:sortableColumn property="setNo" title="${message(code: 'sessionexercise.setNo.label', default: 'Set No')}" />
					
						<g:sortableColumn property="weights" title="${message(code: 'sessionexercise.weights.label', default: 'Weights')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sessionexerciseInstanceList}" status="i" var="sessionexerciseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sessionexerciseInstance.id}">${fieldValue(bean: sessionexerciseInstance, field: "exerciseName")}</g:link></td>
					
						<td>${fieldValue(bean: sessionexerciseInstance, field: "reps")}</td>
					
						<td>${fieldValue(bean: sessionexerciseInstance, field: "sessionID")}</td>
					
						<td>${fieldValue(bean: sessionexerciseInstance, field: "setNo")}</td>
					
						<td>${fieldValue(bean: sessionexerciseInstance, field: "weights")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sessionexerciseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
