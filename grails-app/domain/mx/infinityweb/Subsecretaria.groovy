package mx.infinityweb

class Subsecretaria {
	String nombreSubsecretaria
	static belongsTo = [secretaria:Secretaria]
	static hasMany = [direcciones:Direccion]
    static constraints = {
    	nombreSubsecretaria nullable:false, size: 1..50
    }
}
