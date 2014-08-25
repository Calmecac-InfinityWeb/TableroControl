
<%@ page import="mx.infinityweb.Mapeo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mapeo.label', default: 'Mapeo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mapeo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mapeo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="mapeo.myProcedimiento.label" default="My Procedimiento" /></th>
					
						<g:sortableColumn property="observaciones" title="${message(code: 'mapeo.observaciones.label', default: 'Observaciones')}" />
					
						<g:sortableColumn property="alcance" title="${message(code: 'mapeo.alcance.label', default: 'Alcance')}" />
					
						<g:sortableColumn property="aprobacion" title="${message(code: 'mapeo.aprobacion.label', default: 'Aprobacion')}" />
					
						<g:sortableColumn property="certificado" title="${message(code: 'mapeo.certificado.label', default: 'Certificado')}" />
					
						<g:sortableColumn property="elaboracion" title="${message(code: 'mapeo.elaboracion.label', default: 'Elaboracion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mapeoInstanceList}" status="i" var="mapeoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mapeoInstance.id}">${fieldValue(bean: mapeoInstance, field: "myProcedimiento")}</g:link></td>
					
						<td>${fieldValue(bean: mapeoInstance, field: "observaciones")}</td>
					
						<td>${fieldValue(bean: mapeoInstance, field: "alcance")}</td>
					
						<td>${fieldValue(bean: mapeoInstance, field: "aprobacion")}</td>
					
						<td>${fieldValue(bean: mapeoInstance, field: "certificado")}</td>
					
						<td>${fieldValue(bean: mapeoInstance, field: "elaboracion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mapeoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
