<%@ page import="mx.infinityweb.Secretaria" %>



<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'nombreSecretaria', 'error')} required">
	<label for="nombreSecretaria">
		<g:message code="secretaria.nombreSecretaria.label" default="Nombre Secretaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreSecretaria" maxlength="50" required="" value="${secretariaInstance?.nombreSecretaria}"/>

</div>

