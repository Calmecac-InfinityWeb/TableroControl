package mx.infinityweb

class Subdireccion {
	String nombreSubdireccion
	static belongsTo =  [direccion:Direccion]
    static constraints = {
    	nombreSubdireccion nullable:false, size: 1..30
    }
}
