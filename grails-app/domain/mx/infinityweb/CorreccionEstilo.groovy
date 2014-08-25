package mx.infinityweb

class CorreccionEstilo {
	Estado marcaAgua
	Estado formatoPlantilla
	Estado ortografia
	Estado lenguajeIncluyente
	String observaciones

	static belongsTo = [myProcedimiento:Procedimiento]

    static constraints = {
    	observaciones blank:true, size: 0..90
    }
}
