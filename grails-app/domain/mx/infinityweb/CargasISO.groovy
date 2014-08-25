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

	static belongsTo = [myProcedimiento:Procedimiento]

    static constraints = {
    	observaciones blank:true, size: 0..90
    }
}
