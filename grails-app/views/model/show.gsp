
<%@ page import="tesla.Model" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'model.label', default: 'Model')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-model" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-model" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list model">
			
			
			
				<g:if test="${modelInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="model.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${modelInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modelInstance?.spec_id}">
				<li class="fieldcontain">
					<span id="spec_id-label" class="property-label"><g:message code="model.spec_id.label" default="Specid" /></span>
					
						<span class="property-value" aria-labelledby="spec_id-label"><g:fieldValue bean="${modelInstance}" field="spec_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modelInstance?.starting_cost}">
				<li class="fieldcontain">
					<span id="starting_cost-label" class="property-label"><g:message code="model.starting_cost.label" default="Startingcost" /></span>
					
						<span class="property-value" aria-labelledby="starting_cost-label"><g:fieldValue bean="${modelInstance}" field="starting_cost"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:modelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${modelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
