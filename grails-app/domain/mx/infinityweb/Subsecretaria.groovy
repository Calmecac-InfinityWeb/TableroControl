package mx.infinityweb

class Subsecretaria {
	String nombreSubsecretaria
	Secretaria secretaria
    static constraints = {
    	nombreSubsecretaria nullable:false, size: 1..50
    }
}
