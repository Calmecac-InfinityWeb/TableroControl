package mx.infinityweb

class Procedimiento {
	static hasMany = [myCambio:Cambio]
	String codigoProcedimiento
	String nombreProcedimiento
	Estatus estadoProcedimiento
	Subdireccion subdireccion
	static constraints = {
    	codigoProcedimiento size: 1..10, blank: false, unique: true, nullable: false
    	nombreProcedimiento size: 1..10, blank: false, nullable: false
    }
}
