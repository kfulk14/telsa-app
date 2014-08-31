<%@ page import="tesla.Comparison" %>



<div class="fieldcontain ${hasErrors(bean: comparisonInstance, field: 'buyer_id', 'error')} required">
	<label for="buyer_id">
		<g:message code="comparison.buyer_id.label" default="Buyerid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buyer_id" type="number" value="${comparisonInstance.buyer_id}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: comparisonInstance, field: 'model_id', 'error')} required">
	<label for="model_id">
		<g:message code="comparison.model_id.label" default="Modelid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="model_id" type="number" value="${comparisonInstance.model_id}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: comparisonInstance, field: 'spec_id', 'error')} required">
	<label for="spec_id">
		<g:message code="comparison.spec_id.label" default="Specid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="spec_id" type="number" value="${comparisonInstance.spec_id}" required=""/>

</div>

