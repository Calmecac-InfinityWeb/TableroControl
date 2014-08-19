
<%@ page import="mx.infinityweb.CorreccionEstilo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'correccionEstilo.label', default: 'CorreccionEstilo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-correccionEstilo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-correccionEstilo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="correccionEstilo.procedimiento.label" default="Procedimiento" /></th>
					
						<g:sortableColumn property="observaciones" title="${message(code: 'correccionEstilo.observaciones.label', default: 'Observaciones')}" />
					
						<g:sortableColumn property="formatoPlantilla" title="${message(code: 'correccionEstilo.formatoPlantilla.label', default: 'Formato Plantilla')}" />
					
						<g:sortableColumn property="lenguajeIncluyente" title="${message(code: 'correccionEstilo.lenguajeIncluyente.label', default: 'Lenguaje Incluyente')}" />
					
						<g:sortableColumn property="marcaAgua" title="${message(code: 'correccionEstilo.marcaAgua.label', default: 'Marca Agua')}" />
					
						<g:sortableColumn property="ortografia" title="${message(code: 'correccionEstilo.ortografia.label', default: 'Ortografia')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${correccionEstiloInstanceList}" status="i" var="correccionEstiloInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${correccionEstiloInstance.id}">${fieldValue(bean: correccionEstiloInstance, field: "procedimiento")}</g:link></td>
					
						<td>${fieldValue(bean: correccionEstiloInstance, field: "observaciones")}</td>
					
						<td>${fieldValue(bean: correccionEstiloInstance, field: "formatoPlantilla")}</td>
					
						<td>${fieldValue(bean: correccionEstiloInstance, field: "lenguajeIncluyente")}</td>
					
						<td>${fieldValue(bean: correccionEstiloInstance, field: "marcaAgua")}</td>
					
						<td>${fieldValue(bean: correccionEstiloInstance, field: "ortografia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${correccionEstiloInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
