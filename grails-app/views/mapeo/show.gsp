
<%@ page import="mx.infinityweb.Mapeo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mapeo.label', default: 'Mapeo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mapeo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mapeo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mapeo">
			
				<g:if test="${mapeoInstance?.myProcedimiento}">
				<li class="fieldcontain">
					<span id="myProcedimiento-label" class="property-label"><g:message code="mapeo.myProcedimiento.label" default="My Procedimiento" /></span>
					
						<span class="property-value" aria-labelledby="myProcedimiento-label"><g:link controller="procedimiento" action="show" id="${mapeoInstance?.myProcedimiento?.id}">${mapeoInstance?.myProcedimiento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${mapeoInstance?.observaciones}">
				<li class="fieldcontain">
					<span id="observaciones-label" class="property-label"><g:message code="mapeo.observaciones.label" default="Observaciones" /></span>
					
						<span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue bean="${mapeoInstance}" field="observaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mapeoInstance?.alcance}">
				<li class="fieldcontain">
					<span id="alcance-label" class="property-label"><g:message code="mapeo.alcance.label" default="Alcance" /></span>
					
						<span class="property-value" aria-labelledby="alcance-label"><g:fieldValue bean="${mapeoInstance}" field="alcance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mapeoInstance?.aprobacion}">
				<li class="fieldcontain">
					<span id="aprobacion-label" class="property-label"><g:message code="mapeo.aprobacion.label" default="Aprobacion" /></span>
					
						<span class="property-value" aria-labelledby="aprobacion-label"><g:fieldValue bean="${mapeoInstance}" field="aprobacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mapeoInstance?.certificado}">
				<li class="fieldcontain">
					<span id="certificado-label" class="property-label"><g:message code="mapeo.certificado.label" default="Certificado" /></span>
					
						<span class="property-value" aria-labelledby="certificado-label"><g:fieldValue bean="${mapeoInstance}" field="certificado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mapeoInstance?.elaboracion}">
				<li class="fieldcontain">
					<span id="elaboracion-label" class="property-label"><g:message code="mapeo.elaboracion.label" default="Elaboracion" /></span>
					
						<span class="property-value" aria-labelledby="elaboracion-label"><g:fieldValue bean="${mapeoInstance}" field="elaboracion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mapeoInstance?.indentificacionNecesidades}">
				<li class="fieldcontain">
					<span id="indentificacionNecesidades-label" class="property-label"><g:message code="mapeo.indentificacionNecesidades.label" default="Indentificacion Necesidades" /></span>
					
						<span class="property-value" aria-labelledby="indentificacionNecesidades-label"><g:fieldValue bean="${mapeoInstance}" field="indentificacionNecesidades"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mapeoInstance?.revision}">
				<li class="fieldcontain">
					<span id="revision-label" class="property-label"><g:message code="mapeo.revision.label" default="Revision" /></span>
					
						<span class="property-value" aria-labelledby="revision-label"><g:fieldValue bean="${mapeoInstance}" field="revision"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mapeoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mapeoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
