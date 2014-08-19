
<%@ page import="mx.infinityweb.CargasISO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cargasISO.label', default: 'CargasISO')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cargasISO" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cargasISO" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cargasISO">
			
				<g:if test="${cargasISOInstance?.procedimiento}">
				<li class="fieldcontain">
					<span id="procedimiento-label" class="property-label"><g:message code="cargasISO.procedimiento.label" default="Procedimiento" /></span>
					
						<span class="property-value" aria-labelledby="procedimiento-label"><g:link controller="procedimiento" action="show" id="${cargasISOInstance?.procedimiento?.id}">${cargasISOInstance?.procedimiento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargasISOInstance?.observaciones}">
				<li class="fieldcontain">
					<span id="observaciones-label" class="property-label"><g:message code="cargasISO.observaciones.label" default="Observaciones" /></span>
					
						<span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue bean="${cargasISOInstance}" field="observaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargasISOInstance?.cargado}">
				<li class="fieldcontain">
					<span id="cargado-label" class="property-label"><g:message code="cargasISO.cargado.label" default="Cargado" /></span>
					
						<span class="property-value" aria-labelledby="cargado-label"><g:fieldValue bean="${cargasISOInstance}" field="cargado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargasISOInstance?.clavesPorUsuario}">
				<li class="fieldcontain">
					<span id="clavesPorUsuario-label" class="property-label"><g:message code="cargasISO.clavesPorUsuario.label" default="Claves Por Usuario" /></span>
					
						<span class="property-value" aria-labelledby="clavesPorUsuario-label"><g:fieldValue bean="${cargasISOInstance}" field="clavesPorUsuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargasISOInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="cargasISO.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${cargasISOInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargasISOInstance?.copiaControlada}">
				<li class="fieldcontain">
					<span id="copiaControlada-label" class="property-label"><g:message code="cargasISO.copiaControlada.label" default="Copia Controlada" /></span>
					
						<span class="property-value" aria-labelledby="copiaControlada-label"><g:fieldValue bean="${cargasISOInstance}" field="copiaControlada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargasISOInstance?.fechaDeCarga}">
				<li class="fieldcontain">
					<span id="fechaDeCarga-label" class="property-label"><g:message code="cargasISO.fechaDeCarga.label" default="Fecha De Carga" /></span>
					
						<span class="property-value" aria-labelledby="fechaDeCarga-label"><g:formatDate date="${cargasISOInstance?.fechaDeCarga}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargasISOInstance?.matriz}">
				<li class="fieldcontain">
					<span id="matriz-label" class="property-label"><g:message code="cargasISO.matriz.label" default="Matriz" /></span>
					
						<span class="property-value" aria-labelledby="matriz-label"><g:fieldValue bean="${cargasISOInstance}" field="matriz"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargasISOInstance?.pdf}">
				<li class="fieldcontain">
					<span id="pdf-label" class="property-label"><g:message code="cargasISO.pdf.label" default="Pdf" /></span>
					
						<span class="property-value" aria-labelledby="pdf-label"><g:fieldValue bean="${cargasISOInstance}" field="pdf"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cargasISOInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cargasISOInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
