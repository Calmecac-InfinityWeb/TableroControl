package mx.infinityweb

class Subsecretaria {
	String nombreSubsecretaria
    static constraints = {
    	nombreSubsecretaria nullable:false, size: 1..50
    }
}
