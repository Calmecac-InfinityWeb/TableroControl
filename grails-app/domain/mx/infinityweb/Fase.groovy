package mx.infinityweb

class Fase {
	static belongsTo = [etapa: Etapa]
    String nombre
    OpcLlenado opcLLenado
    static constraints = {
    	nombre size: 1 .. 60
    }
}
