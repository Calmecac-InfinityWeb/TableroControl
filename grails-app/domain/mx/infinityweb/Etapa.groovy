package mx.infinityweb

class Etapa {
	String nombre
	static hasMany = [fases:Fase]
    static constraints = {
    	nombre size: 1 .. 60
    }
}
