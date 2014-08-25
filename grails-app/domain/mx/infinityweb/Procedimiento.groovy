package mx.infinityweb

class Procedimiento {
	String codigoProcedimiento
	String nombreProcedimiento
	Estatus estadoProcedimiento
	
	Mapeo myMapeo
	CorreccionEstilo myCorreccionEstilo
	Implementacion myImplementacion
	CargasISO myCargaISO

	    static constraints = {
    	codigoProcedimiento size: 1..10, blank: false, unique: true, nullable: false
    	nombreProcedimiento size: 1..10, blank: false, nullable: false
    }
}
