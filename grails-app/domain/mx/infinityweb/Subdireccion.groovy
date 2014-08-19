package mx.infinityweb

class Subdireccion {
	String nombreSubdireccion
	Direccion direccion	
    
    static constraints = {
    	nombreSubdireccion nullable:false, size: 1..30
    }
}
