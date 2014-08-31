
<%@ page import="tesla.Spec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'spec.label', default: 'Spec')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-spec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-spec" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list spec">
			
				<g:if test="${specInstance?.additional_cost}">
				<li class="fieldcontain">
					<span id="additional_cost-label" class="property-label"><g:message code="spec.additional_cost.label" default="Additionalcost" /></span>
					
						<span class="property-value" aria-labelledby="additional_cost-label"><g:fieldValue bean="${specInstance}" field="additional_cost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${specInstance?.distance_range}">
				<li class="fieldcontain">
					<span id="distance_range-label" class="property-label"><g:message code="spec.distance_range.label" default="Distancerange" /></span>
					
						<span class="property-value" aria-labelledby="distance_range-label"><g:fieldValue bean="${specInstance}" field="distance_range"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${specInstance?.model_id}">
				<li class="fieldcontain">
					<span id="model_id-label" class="property-label"><g:message code="spec.model_id.label" default="Modelid" /></span>
					
						<span class="property-value" aria-labelledby="model_id-label"><g:fieldValue bean="${specInstance}" field="model_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${specInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="spec.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${specInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${specInstance?.power_outlet}">
				<li class="fieldcontain">
					<span id="power_outlet-label" class="property-label"><g:message code="spec.power_outlet.label" default="Poweroutlet" /></span>
					
						<span class="property-value" aria-labelledby="power_outlet-label"><g:fieldValue bean="${specInstance}" field="power_outlet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${specInstance?.trim_level}">
				<li class="fieldcontain">
					<span id="trim_level-label" class="property-label"><g:message code="spec.trim_level.label" default="Trimlevel" /></span>
					
						<span class="property-value" aria-labelledby="trim_level-label"><g:fieldValue bean="${specInstance}" field="trim_level"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:specInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${specInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
