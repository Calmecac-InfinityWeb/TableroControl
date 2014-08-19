<%@ page import="mx.infinityweb.Implementacion" %>



<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'procedimiento', 'error')} required">
	<label for="procedimiento">
		<g:message code="implementacion.procedimiento.label" default="Procedimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="procedimiento" name="procedimiento.id" from="${mx.infinityweb.Procedimiento.list()}" optionKey="id" required="" value="${implementacionInstance?.procedimiento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'observaciones', 'error')} required">
	<label for="observaciones">
		<g:message code="implementacion.observaciones.label" default="Observaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observaciones" maxlength="90" required="" value="${implementacionInstance?.observaciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'alcance', 'error')} required">
	<label for="alcance">
		<g:message code="implementacion.alcance.label" default="Alcance" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="alcance" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.alcance?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'anexo', 'error')} required">
	<label for="anexo">
		<g:message code="implementacion.anexo.label" default="Anexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="anexo" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.anexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'antecedente', 'error')} required">
	<label for="antecedente">
		<g:message code="implementacion.antecedente.label" default="Antecedente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="antecedente" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.antecedente?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'cantidadAnexos', 'error')} required">
	<label for="cantidadAnexos">
		<g:message code="implementacion.cantidadAnexos.label" default="Cantidad Anexos" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cantidadAnexos" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.cantidadAnexos?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'codigoCorrecto', 'error')} required">
	<label for="codigoCorrecto">
		<g:message code="implementacion.codigoCorrecto.label" default="Codigo Correcto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="codigoCorrecto" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.codigoCorrecto?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'convertirPDF', 'error')} required">
	<label for="convertirPDF">
		<g:message code="implementacion.convertirPDF.label" default="Convertir PDF" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="convertirPDF" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.convertirPDF?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'cuadroControlCambios', 'error')} required">
	<label for="cuadroControlCambios">
		<g:message code="implementacion.cuadroControlCambios.label" default="Cuadro Control Cambios" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cuadroControlCambios" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.cuadroControlCambios?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'definicion', 'error')} required">
	<label for="definicion">
		<g:message code="implementacion.definicion.label" default="Definicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="definicion" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.definicion?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'desarrollo', 'error')} required">
	<label for="desarrollo">
		<g:message code="implementacion.desarrollo.label" default="Desarrollo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="desarrollo" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.desarrollo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'diagramaFlujo', 'error')} required">
	<label for="diagramaFlujo">
		<g:message code="implementacion.diagramaFlujo.label" default="Diagrama Flujo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="diagramaFlujo" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.diagramaFlujo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'fechaEntrega', 'error')} required">
	<label for="fechaEntrega">
		<g:message code="implementacion.fechaEntrega.label" default="Fecha Entrega" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaEntrega" precision="day"  value="${implementacionInstance?.fechaEntrega}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'marcaAgua', 'error')} required">
	<label for="marcaAgua">
		<g:message code="implementacion.marcaAgua.label" default="Marca Agua" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="marcaAgua" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.marcaAgua?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'medidaSeguridad', 'error')} required">
	<label for="medidaSeguridad">
		<g:message code="implementacion.medidaSeguridad.label" default="Medida Seguridad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="medidaSeguridad" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.medidaSeguridad?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'objetivo', 'error')} required">
	<label for="objetivo">
		<g:message code="implementacion.objetivo.label" default="Objetivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="objetivo" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.objetivo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'portada', 'error')} required">
	<label for="portada">
		<g:message code="implementacion.portada.label" default="Portada" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="portada" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.portada?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'referencia', 'error')} required">
	<label for="referencia">
		<g:message code="implementacion.referencia.label" default="Referencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="referencia" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.referencia?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'requisito', 'error')} required">
	<label for="requisito">
		<g:message code="implementacion.requisito.label" default="Requisito" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="requisito" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.requisito?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: implementacionInstance, field: 'tablaContenido', 'error')} required">
	<label for="tablaContenido">
		<g:message code="implementacion.tablaContenido.label" default="Tabla Contenido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tablaContenido" from="${mx.infinityweb.Estado?.values()}" keys="${mx.infinityweb.Estado.values()*.name()}" required="" value="${implementacionInstance?.tablaContenido?.name()}" />

</div>

