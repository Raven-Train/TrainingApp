
<%@ page import="uk.ac.shu.webarch.trainingapp.Exercise" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'exercise.label', default: 'Exercise')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-exercise" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-exercise" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bodyPart" title="${message(code: 'exercise.bodyPart.label', default: 'Body Part')}" />
					
						<g:sortableColumn property="equipment" title="${message(code: 'exercise.equipment.label', default: 'Equipment')}" />
					
						<g:sortableColumn property="exerciseName" title="${message(code: 'exercise.exerciseName.label', default: 'Exercise Name')}" />
					
						<g:sortableColumn property="goalWeight" title="${message(code: 'exercise.goalWeight.label', default: 'Goal Weight')}" />
					
						<g:sortableColumn property="improvement" title="${message(code: 'exercise.improvement.label', default: 'Improvement')}" />
					
						<g:sortableColumn property="percentage" title="${message(code: 'exercise.percentage.label', default: 'Percentage')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${exerciseInstanceList}" status="i" var="exerciseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${exerciseInstance.id}">${fieldValue(bean: exerciseInstance, field: "bodyPart")}</g:link></td>
					
						<td>${fieldValue(bean: exerciseInstance, field: "equipment")}</td>
					
						<td>${fieldValue(bean: exerciseInstance, field: "exerciseName")}</td>
					
						<td>${fieldValue(bean: exerciseInstance, field: "goalWeight")}</td>
					
						<td>${fieldValue(bean: exerciseInstance, field: "improvement")}</td>
					
						<td>${fieldValue(bean: exerciseInstance, field: "percentage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${exerciseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
