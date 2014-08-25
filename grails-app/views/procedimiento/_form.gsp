<%@ page import="mx.infinityweb.Procedimiento" %>



<div class="fieldcontain ${hasErrors(bean: procedimientoInstance, field: 'codigoProcedimiento', 'error')} required">
	<label for="codigoProcedimiento">
		<g:message code="procedimiento.codigoProcedimiento.label" default="Codigo Procedimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoProcedimiento" maxlength="10" required="" value="${procedimientoInstance?.codigoProcedimiento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: procedimientoInstance, field: 'nombreProcedimiento', 'error')} required">
	<label for="nombreProcedimiento">
		<g:message code="procedimiento.nombreProcedimiento.label" default="Nombre Procedimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreProcedimiento" maxlength="10" required="" value="${procedimientoInstance?.nombreProcedimiento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: procedimientoInstance, field: 'estadoProcedimiento', 'error')} required">
	<label for="estadoProcedimiento">
		<g:message code="procedimiento.estadoProcedimiento.label" default="Estado Procedimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoProcedimiento" from="${mx.infinityweb.Estatus?.values()}" keys="${mx.infinityweb.Estatus.values()*.name()}" required="" value="${procedimientoInstance?.estadoProcedimiento?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: procedimientoInstance, field: 'myMapeo', 'error')} required">
	<label for="myMapeo">
		<g:message code="procedimiento.myMapeo.label" default="My Mapeo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="myMapeo" name="myMapeo.id" from="${mx.infinityweb.Mapeo.list()}" optionKey="id" required="" value="${procedimientoInstance?.myMapeo?.id}" class="many-to-one"/>

</div>

