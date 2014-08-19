
<%@ page import="mx.infinityweb.Direccion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'direccion.label', default: 'Direccion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-direccion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-direccion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list direccion">
			
				<g:if test="${direccionInstance?.nombreDireccion}">
				<li class="fieldcontain">
					<span id="nombreDireccion-label" class="property-label"><g:message code="direccion.nombreDireccion.label" default="Nombre Direccion" /></span>
					
						<span class="property-value" aria-labelledby="nombreDireccion-label"><g:fieldValue bean="${direccionInstance}" field="nombreDireccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.subsecretaria}">
				<li class="fieldcontain">
					<span id="subsecretaria-label" class="property-label"><g:message code="direccion.subsecretaria.label" default="Subsecretaria" /></span>
					
						<span class="property-value" aria-labelledby="subsecretaria-label"><g:link controller="subsecretaria" action="show" id="${direccionInstance?.subsecretaria?.id}">${direccionInstance?.subsecretaria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:direccionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${direccionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
