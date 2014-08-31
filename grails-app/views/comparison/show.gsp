
<%@ page import="tesla.Comparison" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comparison.label', default: 'Comparison')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comparison" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comparison" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comparison">
			
				<g:if test="${comparisonInstance?.buyer_id}">
				<li class="fieldcontain">
					<span id="buyer_id-label" class="property-label"><g:message code="comparison.buyer_id.label" default="Buyerid" /></span>
					
						<span class="property-value" aria-labelledby="buyer_id-label"><g:fieldValue bean="${comparisonInstance}" field="buyer_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comparisonInstance?.model_id}">
				<li class="fieldcontain">
					<span id="model_id-label" class="property-label"><g:message code="comparison.model_id.label" default="Modelid" /></span>
					
						<span class="property-value" aria-labelledby="model_id-label"><g:fieldValue bean="${comparisonInstance}" field="model_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comparisonInstance?.spec_id}">
				<li class="fieldcontain">
					<span id="spec_id-label" class="property-label"><g:message code="comparison.spec_id.label" default="Specid" /></span>
					
						<span class="property-value" aria-labelledby="spec_id-label"><g:fieldValue bean="${comparisonInstance}" field="spec_id"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:comparisonInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${comparisonInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
