
<%@ page import="mx.infinityweb.Procedimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'procedimiento.label', default: 'Procedimiento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-procedimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-procedimiento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="codigoProcedimiento" title="${message(code: 'procedimiento.codigoProcedimiento.label', default: 'Codigo Procedimiento')}" />
					
						<g:sortableColumn property="nombreProcedimiento" title="${message(code: 'procedimiento.nombreProcedimiento.label', default: 'Nombre Procedimiento')}" />
					
						<g:sortableColumn property="estadoProcedimiento" title="${message(code: 'procedimiento.estadoProcedimiento.label', default: 'Estado Procedimiento')}" />
					
						<th><g:message code="procedimiento.myMapeo.label" default="My Mapeo" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${procedimientoInstanceList}" status="i" var="procedimientoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${procedimientoInstance.id}">${fieldValue(bean: procedimientoInstance, field: "codigoProcedimiento")}</g:link></td>
					
						<td>${fieldValue(bean: procedimientoInstance, field: "nombreProcedimiento")}</td>
					
						<td>${fieldValue(bean: procedimientoInstance, field: "estadoProcedimiento")}</td>
					
						<td>${fieldValue(bean: procedimientoInstance, field: "myMapeo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${procedimientoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
