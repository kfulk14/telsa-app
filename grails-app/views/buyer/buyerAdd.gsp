
<%@ page import="tesla.Buyer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="buyerMain">
		<g:set var="entityName" value="${message(code: 'buyer.label', default: 'Buyer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buyer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link resource="model" action="create">Add New Model</g:link> </li>
				<li><g:link resource="spec" action="create">Add New Spec</g:link> </li>
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
					
						<g:sortableColumn property="first_name" title="${message(code: 'buyer.first_name.label', default: 'first_name')}" />
					
						<g:sortableColumn property="last_name" title="${message(code: 'buyer.last_name.label', default: 'last_name')}" />
						
						<g:sortableColumn property="email" title="${message(code: 'buyer.email.label', default: 'email')}" />
						
						<g:sortableColumn property="password" title="${message(code: 'buyer.password.label', default: 'password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buyerInstanceList}" status="i" var="buyerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buyerInstance.id}">${fieldValue(bean: buyerInstance, field: "first_name")}</g:link></td>
					
						<td>${fieldValue(bean: buyerInstance, field: "last_name")}</td>
						<td>${fieldValue(bean: buyerInstance, field: "email")}</td>
						<td>${fieldValue(bean: buyerInstance, field: "password")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			
			
		<!--  ALL SPECS IN DATABSE -->	
	
			<div id="list-spec" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="Spec List" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'spec.name.label', default: 'name')}" />
						
						<g:sortableColumn property="distance_range" title="${message(code: 'spec.distance_range.label', default: 'distance_range')}" />
						
						<g:sortableColumn property="trim_level" title="${message(code: 'spec.trim_level.label', default: 'trim_level')}" />
					
						<g:sortableColumn property="power_outlet" title="${message(code: 'spec.power_outlet.label', default: 'power_outlet')}" />
					
						<g:sortableColumn property="additional_cost" title="${message(code: 'spec.additional_cost.label', default: 'additional_cost')}" />
						
						<g:sortableColumn property="additional_cost" title="${message(code: 'spec.model_id.label', default: 'model_id')}" />
											
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${specInstanceList}" status="i" var="specInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
					
						<td>${fieldValue(bean: specInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: specInstance, field: "distance_range")}</td>
						
						<td>${fieldValue(bean: specInstance, field: "trim_level")}</td>
					
						<td>${fieldValue(bean: specInstance, field: "power_outlet")}</td>
						
						<td>${fieldValue(bean: specInstance, field: "additional_cost")}</td>
					
						<td>${fieldValue(bean: specInstance, field: "model_id")}</td>						
						
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			 
			 <!--  comparison -->
			 	<div id="list-comparison" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="Comparison List" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="buyer_id" title="${message(code: 'comparison.buyer_id.label', default: 'buyer_id')}" />
						
						<g:sortableColumn property="model_id" title="${message(code: 'comparison.model_id.label', default: 'model_id')}" />
						
						<g:sortableColumn property="spec_id" title="${message(code: 'comparison.spec_id.label', default: 'spec_id')}" />
						
					
											
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${comparisonInstanceList}" status="i" var="comparisonInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
					
						<td>${fieldValue(bean: comparisonInstance, field: "buyer_id")}</td>
						
						<td>${fieldValue(bean: comparisonInstance, field: "model_id")}</td>
						
						<td>${fieldValue(bean: comparisonInstance, field: "spec_id")}</td>
					
											
						
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			 
			 
			 
			<!-- ALL MODELS IN DATABASE -->
			
			<div id="list-model" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="Model" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'model.name.label', default: 'name')}" />
					
						<g:sortableColumn property="spec_id" title="${message(code: 'model.spec_id.label', default: 'spec_id')}" />
					
						<g:sortableColumn property="starting_cost" title="${message(code: 'model.starting_cost.label', default: 'starting_cost')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${modelInstanceList}" status="i" var="modelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link controller="model" action="show"  id="${modelInstance.id}">${fieldValue(bean: modelInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: modelInstance, field: "spec_id")}</td>
					
						<td>${fieldValue(bean: modelInstance, field: "starting_cost")}</td>
					
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
