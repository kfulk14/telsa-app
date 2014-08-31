
<%@ page import="tesla.Buyer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buyer.label', default: 'Buyer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-buyer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-buyer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buyer">
			
				<g:if test="${buyerInstance?.first_name}">
				<li class="fieldcontain">
					<span id="first_name-label" class="property-label"><g:message code="buyer.first_name.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="first_name-label"><g:fieldValue bean="${buyerInstance}" field="first_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyerInstance?.last_name}">
				<li class="fieldcontain">
					<span id="last_name-label" class="property-label"><g:message code="buyer.last_name.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="last_name-label"><g:fieldValue bean="${buyerInstance}" field="last_name"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${buyerInstance?.last_name}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="buyer.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${buyerInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:buyerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${buyerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		
	
		
		
		
		
	</body>
</html>
