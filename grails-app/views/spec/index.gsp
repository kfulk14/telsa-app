
<%@ page import="tesla.Spec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'spec.label', default: 'Spec')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-spec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-spec" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="additional_cost" title="${message(code: 'spec.additional_cost.label', default: 'Additionalcost')}" />
					
						<g:sortableColumn property="distance_range" title="${message(code: 'spec.distance_range.label', default: 'Distancerange')}" />
					
						<g:sortableColumn property="model_id" title="${message(code: 'spec.model_id.label', default: 'Modelid')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'spec.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="power_outlet" title="${message(code: 'spec.power_outlet.label', default: 'Poweroutlet')}" />
					
						<g:sortableColumn property="trim_level" title="${message(code: 'spec.trim_level.label', default: 'Trimlevel')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${specInstanceList}" status="i" var="specInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${specInstance.id}">${fieldValue(bean: specInstance, field: "additional_cost")}</g:link></td>
					
						<td>${fieldValue(bean: specInstance, field: "distance_range")}</td>
					
						<td>${fieldValue(bean: specInstance, field: "model_id")}</td>
					
						<td>${fieldValue(bean: specInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: specInstance, field: "power_outlet")}</td>
					
						<td>${fieldValue(bean: specInstance, field: "trim_level")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${specInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
