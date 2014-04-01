<%@ page import="uk.ac.shu.webarch.trainingapp.Sessionexercise" %>



<div class="fieldcontain ${hasErrors(bean: sessionexerciseInstance, field: 'exerciseName', 'error')} required">
	<label for="exerciseName">
		<g:message code="sessionexercise.exerciseName.label" default="Exercise Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="exerciseName" name="exerciseName.id" from="${uk.ac.shu.webarch.trainingapp.Exercise.list()}" optionKey="id" required="" value="${sessionexerciseInstance?.exerciseName?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionexerciseInstance, field: 'reps', 'error')} required">
	<label for="reps">
		<g:message code="sessionexercise.reps.label" default="Reps" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reps" type="number" value="${sessionexerciseInstance.reps}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionexerciseInstance, field: 'sessionID', 'error')} required">
	<label for="sessionID">
		<g:message code="sessionexercise.sessionID.label" default="Session ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sessionID" name="sessionID.id" from="${uk.ac.shu.webarch.trainingapp.Trainingsession.list()}" optionKey="id" required="" value="${sessionexerciseInstance?.sessionID?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionexerciseInstance, field: 'setNo', 'error')} required">
	<label for="setNo">
		<g:message code="sessionexercise.setNo.label" default="Set No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="setNo" type="number" value="${sessionexerciseInstance.setNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionexerciseInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="sessionexercise.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="weight" type="number" value="${sessionexerciseInstance.weight}" required=""/>
</div>

