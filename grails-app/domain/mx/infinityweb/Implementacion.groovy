package mx.infinityweb

class Implementacion {
	Estado codigoCorrecto
	Estado marcaAgua
	Estado portada
	Estado cuadroControlCambios
	Estado tablaContenido
	Estado antecedente
	Estado objetivo
	Estado alcance
	Estado definicion
	Estado medidaSeguridad
	Estado requisito
	Estado desarrollo
	Estado diagramaFlujo
	Estado anexo
	Estado cantidadAnexos
	Estado referencia
	Estado convertirPDF
	Date fechaEntrega
	String observaciones
	Procedimiento procedimiento

    static constraints = {
    	procedimiento nullable: false
    	observaciones blank:true, size: 0..90
    }
}
