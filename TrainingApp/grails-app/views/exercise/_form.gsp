<%@ page import="uk.ac.shu.webarch.trainingapp.Exercise" %>



<div class="fieldcontain ${hasErrors(bean: exerciseInstance, field: 'bodyPart', 'error')} ">
	<label for="bodyPart">
		<g:message code="exercise.bodyPart.label" default="Body Part" />
		
	</label>
	<g:textField name="bodyPart" value="${exerciseInstance?.bodyPart}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: exerciseInstance, field: 'equipment', 'error')} ">
	<label for="equipment">
		<g:message code="exercise.equipment.label" default="Equipment" />
		
	</label>
	<g:textField name="equipment" value="${exerciseInstance?.equipment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: exerciseInstance, field: 'exerciseName', 'error')} ">
	<label for="exerciseName">
		<g:message code="exercise.exerciseName.label" default="Exercise Name" />
		
	</label>
	<g:textField name="exerciseName" value="${exerciseInstance?.exerciseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: exerciseInstance, field: 'goalWeight', 'error')} required">
	<label for="goalWeight">
		<g:message code="exercise.goalWeight.label" default="Goal Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="goalWeight" type="number" value="${exerciseInstance.goalWeight}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: exerciseInstance, field: 'improvement', 'error')} required">
	<label for="improvement">
		<g:message code="exercise.improvement.label" default="Improvement" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="improvement" type="number" value="${exerciseInstance.improvement}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: exerciseInstance, field: 'percentage', 'error')} required">
	<label for="percentage">
		<g:message code="exercise.percentage.label" default="Percentage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentage" type="number" value="${exerciseInstance.percentage}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: exerciseInstance, field: 'sessionExercise', 'error')} ">
	<label for="sessionExercise">
		<g:message code="exercise.sessionExercise.label" default="Session Exercise" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${exerciseInstance?.sessionExercise?}" var="s">
    <li><g:link controller="sessionexercise" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sessionexercise" action="create" params="['exercise.id': exerciseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sessionexercise.label', default: 'Sessionexercise')])}</g:link>
</li>
</ul>

</div>

