<%@ page import="tesla.Spec" %>



<div class="fieldcontain ${hasErrors(bean: specInstance, field: 'additional_cost', 'error')} required">
	<label for="additional_cost">
		<g:message code="spec.additional_cost.label" default="Additionalcost" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="additional_cost" required="" value="${specInstance?.additional_cost}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: specInstance, field: 'distance_range', 'error')} required">
	<label for="distance_range">
		<g:message code="spec.distance_range.label" default="Distancerange" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="distance_range" required="" value="${specInstance?.distance_range}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: specInstance, field: 'model_id', 'error')} required">
	<label for="model_id">
		<g:message code="spec.model_id.label" default="Modelid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="model_id" required="" value="${specInstance?.model_id}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: specInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="spec.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${specInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: specInstance, field: 'power_outlet', 'error')} required">
	<label for="power_outlet">
		<g:message code="spec.power_outlet.label" default="Poweroutlet" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="power_outlet" required="" value="${specInstance?.power_outlet}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: specInstance, field: 'trim_level', 'error')} required">
	<label for="trim_level">
		<g:message code="spec.trim_level.label" default="Trimlevel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="trim_level" required="" value="${specInstance?.trim_level}"/>

</div>

