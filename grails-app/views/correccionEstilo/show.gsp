
<%@ page import="mx.infinityweb.CorreccionEstilo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'correccionEstilo.label', default: 'CorreccionEstilo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-correccionEstilo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-correccionEstilo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list correccionEstilo">
			
				<g:if test="${correccionEstiloInstance?.procedimiento}">
				<li class="fieldcontain">
					<span id="procedimiento-label" class="property-label"><g:message code="correccionEstilo.procedimiento.label" default="Procedimiento" /></span>
					
						<span class="property-value" aria-labelledby="procedimiento-label"><g:link controller="procedimiento" action="show" id="${correccionEstiloInstance?.procedimiento?.id}">${correccionEstiloInstance?.procedimiento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${correccionEstiloInstance?.observaciones}">
				<li class="fieldcontain">
					<span id="observaciones-label" class="property-label"><g:message code="correccionEstilo.observaciones.label" default="Observaciones" /></span>
					
						<span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue bean="${correccionEstiloInstance}" field="observaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${correccionEstiloInstance?.formatoPlantilla}">
				<li class="fieldcontain">
					<span id="formatoPlantilla-label" class="property-label"><g:message code="correccionEstilo.formatoPlantilla.label" default="Formato Plantilla" /></span>
					
						<span class="property-value" aria-labelledby="formatoPlantilla-label"><g:fieldValue bean="${correccionEstiloInstance}" field="formatoPlantilla"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${correccionEstiloInstance?.lenguajeIncluyente}">
				<li class="fieldcontain">
					<span id="lenguajeIncluyente-label" class="property-label"><g:message code="correccionEstilo.lenguajeIncluyente.label" default="Lenguaje Incluyente" /></span>
					
						<span class="property-value" aria-labelledby="lenguajeIncluyente-label"><g:fieldValue bean="${correccionEstiloInstance}" field="lenguajeIncluyente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${correccionEstiloInstance?.marcaAgua}">
				<li class="fieldcontain">
					<span id="marcaAgua-label" class="property-label"><g:message code="correccionEstilo.marcaAgua.label" default="Marca Agua" /></span>
					
						<span class="property-value" aria-labelledby="marcaAgua-label"><g:fieldValue bean="${correccionEstiloInstance}" field="marcaAgua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${correccionEstiloInstance?.ortografia}">
				<li class="fieldcontain">
					<span id="ortografia-label" class="property-label"><g:message code="correccionEstilo.ortografia.label" default="Ortografia" /></span>
					
						<span class="property-value" aria-labelledby="ortografia-label"><g:fieldValue bean="${correccionEstiloInstance}" field="ortografia"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:correccionEstiloInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${correccionEstiloInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
