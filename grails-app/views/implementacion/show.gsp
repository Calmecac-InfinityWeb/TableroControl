
<%@ page import="mx.infinityweb.Implementacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'implementacion.label', default: 'Implementacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-implementacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-implementacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list implementacion">
			
				<g:if test="${implementacionInstance?.procedimiento}">
				<li class="fieldcontain">
					<span id="procedimiento-label" class="property-label"><g:message code="implementacion.procedimiento.label" default="Procedimiento" /></span>
					
						<span class="property-value" aria-labelledby="procedimiento-label"><g:link controller="procedimiento" action="show" id="${implementacionInstance?.procedimiento?.id}">${implementacionInstance?.procedimiento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.observaciones}">
				<li class="fieldcontain">
					<span id="observaciones-label" class="property-label"><g:message code="implementacion.observaciones.label" default="Observaciones" /></span>
					
						<span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue bean="${implementacionInstance}" field="observaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.alcance}">
				<li class="fieldcontain">
					<span id="alcance-label" class="property-label"><g:message code="implementacion.alcance.label" default="Alcance" /></span>
					
						<span class="property-value" aria-labelledby="alcance-label"><g:fieldValue bean="${implementacionInstance}" field="alcance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.anexo}">
				<li class="fieldcontain">
					<span id="anexo-label" class="property-label"><g:message code="implementacion.anexo.label" default="Anexo" /></span>
					
						<span class="property-value" aria-labelledby="anexo-label"><g:fieldValue bean="${implementacionInstance}" field="anexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.antecedente}">
				<li class="fieldcontain">
					<span id="antecedente-label" class="property-label"><g:message code="implementacion.antecedente.label" default="Antecedente" /></span>
					
						<span class="property-value" aria-labelledby="antecedente-label"><g:fieldValue bean="${implementacionInstance}" field="antecedente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.cantidadAnexos}">
				<li class="fieldcontain">
					<span id="cantidadAnexos-label" class="property-label"><g:message code="implementacion.cantidadAnexos.label" default="Cantidad Anexos" /></span>
					
						<span class="property-value" aria-labelledby="cantidadAnexos-label"><g:fieldValue bean="${implementacionInstance}" field="cantidadAnexos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.codigoCorrecto}">
				<li class="fieldcontain">
					<span id="codigoCorrecto-label" class="property-label"><g:message code="implementacion.codigoCorrecto.label" default="Codigo Correcto" /></span>
					
						<span class="property-value" aria-labelledby="codigoCorrecto-label"><g:fieldValue bean="${implementacionInstance}" field="codigoCorrecto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.convertirPDF}">
				<li class="fieldcontain">
					<span id="convertirPDF-label" class="property-label"><g:message code="implementacion.convertirPDF.label" default="Convertir PDF" /></span>
					
						<span class="property-value" aria-labelledby="convertirPDF-label"><g:fieldValue bean="${implementacionInstance}" field="convertirPDF"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.cuadroControlCambios}">
				<li class="fieldcontain">
					<span id="cuadroControlCambios-label" class="property-label"><g:message code="implementacion.cuadroControlCambios.label" default="Cuadro Control Cambios" /></span>
					
						<span class="property-value" aria-labelledby="cuadroControlCambios-label"><g:fieldValue bean="${implementacionInstance}" field="cuadroControlCambios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.definicion}">
				<li class="fieldcontain">
					<span id="definicion-label" class="property-label"><g:message code="implementacion.definicion.label" default="Definicion" /></span>
					
						<span class="property-value" aria-labelledby="definicion-label"><g:fieldValue bean="${implementacionInstance}" field="definicion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.desarrollo}">
				<li class="fieldcontain">
					<span id="desarrollo-label" class="property-label"><g:message code="implementacion.desarrollo.label" default="Desarrollo" /></span>
					
						<span class="property-value" aria-labelledby="desarrollo-label"><g:fieldValue bean="${implementacionInstance}" field="desarrollo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.diagramaFlujo}">
				<li class="fieldcontain">
					<span id="diagramaFlujo-label" class="property-label"><g:message code="implementacion.diagramaFlujo.label" default="Diagrama Flujo" /></span>
					
						<span class="property-value" aria-labelledby="diagramaFlujo-label"><g:fieldValue bean="${implementacionInstance}" field="diagramaFlujo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.fechaEntrega}">
				<li class="fieldcontain">
					<span id="fechaEntrega-label" class="property-label"><g:message code="implementacion.fechaEntrega.label" default="Fecha Entrega" /></span>
					
						<span class="property-value" aria-labelledby="fechaEntrega-label"><g:formatDate date="${implementacionInstance?.fechaEntrega}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.marcaAgua}">
				<li class="fieldcontain">
					<span id="marcaAgua-label" class="property-label"><g:message code="implementacion.marcaAgua.label" default="Marca Agua" /></span>
					
						<span class="property-value" aria-labelledby="marcaAgua-label"><g:fieldValue bean="${implementacionInstance}" field="marcaAgua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.medidaSeguridad}">
				<li class="fieldcontain">
					<span id="medidaSeguridad-label" class="property-label"><g:message code="implementacion.medidaSeguridad.label" default="Medida Seguridad" /></span>
					
						<span class="property-value" aria-labelledby="medidaSeguridad-label"><g:fieldValue bean="${implementacionInstance}" field="medidaSeguridad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.objetivo}">
				<li class="fieldcontain">
					<span id="objetivo-label" class="property-label"><g:message code="implementacion.objetivo.label" default="Objetivo" /></span>
					
						<span class="property-value" aria-labelledby="objetivo-label"><g:fieldValue bean="${implementacionInstance}" field="objetivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.portada}">
				<li class="fieldcontain">
					<span id="portada-label" class="property-label"><g:message code="implementacion.portada.label" default="Portada" /></span>
					
						<span class="property-value" aria-labelledby="portada-label"><g:fieldValue bean="${implementacionInstance}" field="portada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.referencia}">
				<li class="fieldcontain">
					<span id="referencia-label" class="property-label"><g:message code="implementacion.referencia.label" default="Referencia" /></span>
					
						<span class="property-value" aria-labelledby="referencia-label"><g:fieldValue bean="${implementacionInstance}" field="referencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.requisito}">
				<li class="fieldcontain">
					<span id="requisito-label" class="property-label"><g:message code="implementacion.requisito.label" default="Requisito" /></span>
					
						<span class="property-value" aria-labelledby="requisito-label"><g:fieldValue bean="${implementacionInstance}" field="requisito"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementacionInstance?.tablaContenido}">
				<li class="fieldcontain">
					<span id="tablaContenido-label" class="property-label"><g:message code="implementacion.tablaContenido.label" default="Tabla Contenido" /></span>
					
						<span class="property-value" aria-labelledby="tablaContenido-label"><g:fieldValue bean="${implementacionInstance}" field="tablaContenido"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:implementacionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${implementacionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
