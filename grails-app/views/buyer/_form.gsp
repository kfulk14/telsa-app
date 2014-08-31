<%@ page import="tesla.Buyer" %>



<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'first_name', 'error')} required">
	<label for="first_name">
		<g:message code="buyer.first_name.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="first_name" required="" value="${buyerInstance?.first_name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'last_name', 'error')} required">
	<label for="last_name">
		<g:message code="buyer.last_name.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="last_name" required="" value="${buyerInstance?.last_name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="buyer.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${buyerInstance?.password}"/>

</div>

