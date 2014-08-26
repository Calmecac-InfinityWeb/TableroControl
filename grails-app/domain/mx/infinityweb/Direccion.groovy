package mx.infinityweb

class Direccion {
	String nombreDireccion
	static belongsTo = [subsecretaria:Subsecretaria]
	static hasMany = [subdirecciones:Subdireccion]
    static constraints = {
    	nombreDireccion nullable:false, size: 1..30
    }
}
