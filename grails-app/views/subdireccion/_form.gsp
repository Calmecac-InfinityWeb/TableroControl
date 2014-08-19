<%@ page import="mx.infinityweb.Subdireccion" %>



<div class="fieldcontain ${hasErrors(bean: subdireccionInstance, field: 'nombreSubdireccion', 'error')} required">
	<label for="nombreSubdireccion">
		<g:message code="subdireccion.nombreSubdireccion.label" default="Nombre Subdireccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreSubdireccion" maxlength="30" required="" value="${subdireccionInstance?.nombreSubdireccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subdireccionInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="subdireccion.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="direccion" name="direccion.id" from="${mx.infinityweb.Direccion.list()}" optionKey="id" required="" value="${subdireccionInstance?.direccion?.id}" class="many-to-one"/>

</div>

