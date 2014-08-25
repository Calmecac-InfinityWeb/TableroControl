
<%@ page import="mx.infinityweb.Procedimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'procedimiento.label', default: 'Procedimiento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-procedimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-procedimiento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list procedimiento">
			
				<g:if test="${procedimientoInstance?.codigoProcedimiento}">
				<li class="fieldcontain">
					<span id="codigoProcedimiento-label" class="property-label"><g:message code="procedimiento.codigoProcedimiento.label" default="Codigo Procedimiento" /></span>
					
						<span class="property-value" aria-labelledby="codigoProcedimiento-label"><g:fieldValue bean="${procedimientoInstance}" field="codigoProcedimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${procedimientoInstance?.nombreProcedimiento}">
				<li class="fieldcontain">
					<span id="nombreProcedimiento-label" class="property-label"><g:message code="procedimiento.nombreProcedimiento.label" default="Nombre Procedimiento" /></span>
					
						<span class="property-value" aria-labelledby="nombreProcedimiento-label"><g:fieldValue bean="${procedimientoInstance}" field="nombreProcedimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${procedimientoInstance?.estadoProcedimiento}">
				<li class="fieldcontain">
					<span id="estadoProcedimiento-label" class="property-label"><g:message code="procedimiento.estadoProcedimiento.label" default="Estado Procedimiento" /></span>
					
						<span class="property-value" aria-labelledby="estadoProcedimiento-label"><g:fieldValue bean="${procedimientoInstance}" field="estadoProcedimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${procedimientoInstance?.myMapeo}">
				<li class="fieldcontain">
					<span id="myMapeo-label" class="property-label"><g:message code="procedimiento.myMapeo.label" default="My Mapeo" /></span>
					
						<span class="property-value" aria-labelledby="myMapeo-label"><g:link controller="mapeo" action="show" id="${procedimientoInstance?.myMapeo?.id}">${procedimientoInstance?.myMapeo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:procedimientoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${procedimientoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
