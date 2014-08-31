
<%@ page import="tesla.Comparison" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comparison.label', default: 'Comparison')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-comparison" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-comparison" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="buyer_id" title="${message(code: 'comparison.buyer_id.label', default: 'Buyerid')}" />
					
						<g:sortableColumn property="model_id" title="${message(code: 'comparison.model_id.label', default: 'Modelid')}" />
					
						<g:sortableColumn property="spec_id" title="${message(code: 'comparison.spec_id.label', default: 'Specid')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${comparisonInstanceList}" status="i" var="comparisonInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${comparisonInstance.id}">${fieldValue(bean: comparisonInstance, field: "buyer_id")}</g:link></td>
					
						<td>${fieldValue(bean: comparisonInstance, field: "model_id")}</td>
					
						<td>${fieldValue(bean: comparisonInstance, field: "spec_id")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${comparisonInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
