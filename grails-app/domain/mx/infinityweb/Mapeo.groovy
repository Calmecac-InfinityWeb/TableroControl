package mx.infinityweb
class Mapeo {
	Estado indentificacionNecesidades
	Estado elaboracion
	Estado revision
	Estado aprobacion
	Estado certificado
	Estado alcance
	String observaciones
	Procedimiento procedimiento
    
    static constraints = {
    	procedimiento nullable: false
    	observaciones blank:true, size: 0..90
    }
}
