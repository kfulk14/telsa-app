
<%@ page import="tesla.Buyer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buyer.label', default: 'Buyer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buyer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buyer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="first_name" title="${message(code: 'buyer.first_name.label', default: 'Firstname')}" />
					
						<g:sortableColumn property="last_name" title="${message(code: 'buyer.last_name.label', default: 'Lastname')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buyerInstanceList}" status="i" var="buyerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buyerInstance.id}">${fieldValue(bean: buyerInstance, field: "first_name")}</g:link></td>
					
						<td>${fieldValue(bean: buyerInstance, field: "last_name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buyerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
