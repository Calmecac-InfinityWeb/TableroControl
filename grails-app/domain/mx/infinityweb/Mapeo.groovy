package mx.infinityweb
class Mapeo {
	Estado indentificacionNecesidades
	Estado elaboracion
	Estado revision
	Estado aprobacion
	Estado certificado
	Estado alcance
	String observaciones
	
	static belongsTo = [myProcedimiento:Procedimiento]
    
    static constraints = {
    	myProcedimiento nullable: false
    	observaciones blank:true, size: 0..90
    }
}
