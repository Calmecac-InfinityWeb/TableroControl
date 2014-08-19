
<%@ page import="mx.infinityweb.Implementacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'implementacion.label', default: 'Implementacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-implementacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-implementacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="implementacion.procedimiento.label" default="Procedimiento" /></th>
					
						<g:sortableColumn property="observaciones" title="${message(code: 'implementacion.observaciones.label', default: 'Observaciones')}" />
					
						<g:sortableColumn property="alcance" title="${message(code: 'implementacion.alcance.label', default: 'Alcance')}" />
					
						<g:sortableColumn property="anexo" title="${message(code: 'implementacion.anexo.label', default: 'Anexo')}" />
					
						<g:sortableColumn property="antecedente" title="${message(code: 'implementacion.antecedente.label', default: 'Antecedente')}" />
					
						<g:sortableColumn property="cantidadAnexos" title="${message(code: 'implementacion.cantidadAnexos.label', default: 'Cantidad Anexos')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${implementacionInstanceList}" status="i" var="implementacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${implementacionInstance.id}">${fieldValue(bean: implementacionInstance, field: "procedimiento")}</g:link></td>
					
						<td>${fieldValue(bean: implementacionInstance, field: "observaciones")}</td>
					
						<td>${fieldValue(bean: implementacionInstance, field: "alcance")}</td>
					
						<td>${fieldValue(bean: implementacionInstance, field: "anexo")}</td>
					
						<td>${fieldValue(bean: implementacionInstance, field: "antecedente")}</td>
					
						<td>${fieldValue(bean: implementacionInstance, field: "cantidadAnexos")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${implementacionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
