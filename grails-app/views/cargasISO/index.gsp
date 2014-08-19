
<%@ page import="mx.infinityweb.CargasISO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cargasISO.label', default: 'CargasISO')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cargasISO" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cargasISO" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="cargasISO.procedimiento.label" default="Procedimiento" /></th>
					
						<g:sortableColumn property="observaciones" title="${message(code: 'cargasISO.observaciones.label', default: 'Observaciones')}" />
					
						<g:sortableColumn property="cargado" title="${message(code: 'cargasISO.cargado.label', default: 'Cargado')}" />
					
						<g:sortableColumn property="clavesPorUsuario" title="${message(code: 'cargasISO.clavesPorUsuario.label', default: 'Claves Por Usuario')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'cargasISO.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="copiaControlada" title="${message(code: 'cargasISO.copiaControlada.label', default: 'Copia Controlada')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cargasISOInstanceList}" status="i" var="cargasISOInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cargasISOInstance.id}">${fieldValue(bean: cargasISOInstance, field: "procedimiento")}</g:link></td>
					
						<td>${fieldValue(bean: cargasISOInstance, field: "observaciones")}</td>
					
						<td>${fieldValue(bean: cargasISOInstance, field: "cargado")}</td>
					
						<td>${fieldValue(bean: cargasISOInstance, field: "clavesPorUsuario")}</td>
					
						<td>${fieldValue(bean: cargasISOInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: cargasISOInstance, field: "copiaControlada")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cargasISOInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
