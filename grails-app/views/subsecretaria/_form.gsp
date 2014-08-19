<%@ page import="mx.infinityweb.Subsecretaria" %>



<div class="fieldcontain ${hasErrors(bean: subsecretariaInstance, field: 'nombreSubsecretaria', 'error')} required">
	<label for="nombreSubsecretaria">
		<g:message code="subsecretaria.nombreSubsecretaria.label" default="Nombre Subsecretaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreSubsecretaria" maxlength="50" required="" value="${subsecretariaInstance?.nombreSubsecretaria}"/>

</div>

