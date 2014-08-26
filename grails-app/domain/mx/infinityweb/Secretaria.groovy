package mx.infinityweb

class Secretaria {

	String nombreSecretaria
	static hasMany = [subsecretarias:Subsecretaria]
    static constraints = {
    	nombreSecretaria nullable:false, size: 1..50
    }
}
