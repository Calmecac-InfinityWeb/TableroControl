<%@ page import="mx.infinityweb.CorreccionEstilo" %>



<div class="fieldcontain ${hasErrors(bean: correccionEstiloInstance, field: 'procedimiento', 'error')} required">
	<label for="procedimiento">
		<g:message code="correccionEstilo.procedimiento.label" default="Procedimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="procedimiento" name="procedimiento.id" from="${mx.infinityweb.Procedimiento.list()}" optionKey="id" required="" value="${correccionEstiloInstance?.procedimiento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: correccionEstiloInstance, field: 'observaciones', 'error')} required">
	<label for="observaciones">
		<g:message code="correccionEstilo.observaciones.label" default="Observaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observaciones" maxlength="90" required="" value="${correccionEstiloInstance?.observaciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: correccionEstiloInstance, field: 'formatoPlantilla', 'error')} required">
	<label for="formatoPlantilla">
		<g:message code="correccionEstilo.formatoPlantilla.label" default="Formato Plantilla" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="formatoPlantilla" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${correccionEstiloInstance?.formatoPlantilla?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: correccionEstiloInstance, field: 'lenguajeIncluyente', 'error')} required">
	<label for="lenguajeIncluyente">
		<g:message code="correccionEstilo.lenguajeIncluyente.label" default="Lenguaje Incluyente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="lenguajeIncluyente" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${correccionEstiloInstance?.lenguajeIncluyente?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: correccionEstiloInstance, field: 'marcaAgua', 'error')} required">
	<label for="marcaAgua">
		<g:message code="correccionEstilo.marcaAgua.label" default="Marca Agua" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="marcaAgua" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${correccionEstiloInstance?.marcaAgua?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: correccionEstiloInstance, field: 'ortografia', 'error')} required">
	<label for="ortografia">
		<g:message code="correccionEstilo.ortografia.label" default="Ortografia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ortografia" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${correccionEstiloInstance?.ortografia?.name()}" />

</div>

