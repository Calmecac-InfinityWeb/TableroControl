package mx.infinityweb

class CargasISO {
	Estado codigo
	Estado matriz
	Estado copiaControlada
	Estado pdf
	Estado cargado
	Date fechaDeCarga
	Estado clavesPorUsuario
	String observaciones
	Procedimiento procedimiento

    static constraints = {
    	procedimiento nullable: false
    	observaciones blank:true, size: 0..90
    }
}
