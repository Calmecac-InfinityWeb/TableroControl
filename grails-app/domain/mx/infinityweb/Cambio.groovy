package mx.infinityweb

class Cambio {
	Date fecha
	String valor
	Fase fase

	static belongsTo = [myProcedimiento:Procedimiento]

    static constraints = {
    	fecha nullable: false
    	valor nullable: false
    }
}
