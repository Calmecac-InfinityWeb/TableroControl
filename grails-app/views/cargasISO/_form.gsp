<%@ page import="mx.infinityweb.CargasISO" %>



<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'procedimiento', 'error')} required">
	<label for="procedimiento">
		<g:message code="cargasISO.procedimiento.label" default="Procedimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="procedimiento" name="procedimiento.id" from="${mx.infinityweb.Procedimiento.list()}" optionKey="id" required="" value="${cargasISOInstance?.procedimiento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'observaciones', 'error')} required">
	<label for="observaciones">
		<g:message code="cargasISO.observaciones.label" default="Observaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observaciones" maxlength="90" required="" value="${cargasISOInstance?.observaciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'cargado', 'error')} required">
	<label for="cargado">
		<g:message code="cargasISO.cargado.label" default="Cargado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cargado" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${cargasISOInstance?.cargado?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'clavesPorUsuario', 'error')} required">
	<label for="clavesPorUsuario">
		<g:message code="cargasISO.clavesPorUsuario.label" default="Claves Por Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="clavesPorUsuario" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${cargasISOInstance?.clavesPorUsuario?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="cargasISO.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="codigo" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${cargasISOInstance?.codigo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'copiaControlada', 'error')} required">
	<label for="copiaControlada">
		<g:message code="cargasISO.copiaControlada.label" default="Copia Controlada" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="copiaControlada" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${cargasISOInstance?.copiaControlada?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'fechaDeCarga', 'error')} required">
	<label for="fechaDeCarga">
		<g:message code="cargasISO.fechaDeCarga.label" default="Fecha De Carga" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaDeCarga" precision="day"  value="${cargasISOInstance?.fechaDeCarga}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'matriz', 'error')} required">
	<label for="matriz">
		<g:message code="cargasISO.matriz.label" default="Matriz" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="matriz" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${cargasISOInstance?.matriz?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cargasISOInstance, field: 'pdf', 'error')} required">
	<label for="pdf">
		<g:message code="cargasISO.pdf.label" default="Pdf" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="pdf" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${cargasISOInstance?.pdf?.name()}" />

</div>

