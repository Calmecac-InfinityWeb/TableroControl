<%@ page import="mx.infinityweb.Mapeo" %>



<div class="fieldcontain ${hasErrors(bean: mapeoInstance, field: 'procedimiento', 'error')} required">
	<label for="procedimiento">
		<g:message code="mapeo.procedimiento.label" default="Procedimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="procedimiento" name="procedimiento.id" from="${mx.infinityweb.Procedimiento.list()}" optionKey="id" required="" value="${mapeoInstance?.procedimiento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mapeoInstance, field: 'observaciones', 'error')} required">
	<label for="observaciones">
		<g:message code="mapeo.observaciones.label" default="Observaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observaciones" maxlength="90" required="" value="${mapeoInstance?.observaciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mapeoInstance, field: 'alcance', 'error')} required">
	<label for="alcance">
		<g:message code="mapeo.alcance.label" default="Alcance" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="alcance" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${mapeoInstance?.alcance?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: mapeoInstance, field: 'aprobacion', 'error')} required">
	<label for="aprobacion">
		<g:message code="mapeo.aprobacion.label" default="Aprobacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="aprobacion" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${mapeoInstance?.aprobacion?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: mapeoInstance, field: 'certificado', 'error')} required">
	<label for="certificado">
		<g:message code="mapeo.certificado.label" default="Certificado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="certificado" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${mapeoInstance?.certificado?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: mapeoInstance, field: 'elaboracion', 'error')} required">
	<label for="elaboracion">
		<g:message code="mapeo.elaboracion.label" default="Elaboracion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="elaboracion" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${mapeoInstance?.elaboracion?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: mapeoInstance, field: 'indentificacionNecesidades', 'error')} required">
	<label for="indentificacionNecesidades">
		<g:message code="mapeo.indentificacionNecesidades.label" default="Indentificacion Necesidades" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="indentificacionNecesidades" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${mapeoInstance?.indentificacionNecesidades?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: mapeoInstance, field: 'revision', 'error')} required">
	<label for="revision">
		<g:message code="mapeo.revision.label" default="Revision" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="revision" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${mapeoInstance?.revision?.name()}" />

</div>

