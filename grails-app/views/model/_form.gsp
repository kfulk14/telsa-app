<%@ page import="tesla.Model" %>



<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'buyers', 'error')} ">
	<label for="buyers">
		<g:message code="model.buyers.label" default="Buyers" />
		
	</label>
	<!-- REMOVED RELATIONSHIP IN MODEL DOMAIN -->

</div>

<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="model.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${modelInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'spec_id', 'error')} required">
	<label for="spec_id">
		<g:message code="model.spec_id.label" default="spec_id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="spec_id" type="number" value="${modelInstance.spec_id}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'starting_cost', 'error')} required">
	<label for="starting_cost">
		<g:message code="model.starting_cost.label" default="starting_cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="starting_cost" required="" value="${modelInstance?.starting_cost}"/>

</div>

