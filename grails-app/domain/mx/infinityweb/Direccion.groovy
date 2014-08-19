package mx.infinityweb

class Direccion {
	String nombreDireccion
	Subsecretaria subsecretaria

    static constraints = {
    	nombreDireccion nullable:false, size: 1..30
    }
}
