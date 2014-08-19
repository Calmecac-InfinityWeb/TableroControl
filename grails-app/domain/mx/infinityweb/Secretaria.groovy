package mx.infinityweb

class Secretaria {

	String nombreSecretaria
    static constraints = {
    	nombreSecretaria nullable:false, size: 1..50
    }
}
