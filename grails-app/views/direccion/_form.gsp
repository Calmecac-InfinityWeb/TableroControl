<%@ page import="mx.infinityweb.Direccion" %>



<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'nombreDireccion', 'error')} required">
	<label for="nombreDireccion">
		<g:message code="direccion.nombreDireccion.label" default="Nombre Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreDireccion" maxlength="30" required="" value="${direccionInstance?.nombreDireccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'subsecretaria', 'error')} required">
	<label for="subsecretaria">
		<g:message code="direccion.subsecretaria.label" default="Subsecretaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subsecretaria" name="subsecretaria.id" from="${mx.infinityweb.Subsecretaria.list()}" optionKey="id" required="" value="${direccionInstance?.subsecretaria?.id}" class="many-to-one"/>

</div>

