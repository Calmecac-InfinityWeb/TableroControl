package mx.infinityweb

class CorreccionEstilo {
	Estado marcaAgua
	Estado formatoPlantilla
	Estado ortografia
	Estado lenguajeIncluyente
	String observaciones
	Procedimiento procedimiento

    static constraints = {
    	procedimiento nullable: false
    	observaciones blank:true, size: 0..90
    }
}
