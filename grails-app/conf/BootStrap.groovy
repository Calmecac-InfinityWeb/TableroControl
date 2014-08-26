package mx.infinityweb

class BootStrap {

    def init = { servletContext ->

    	new Etapa(nombre: "Mapeo").save(flush: true)
    	new Etapa(nombre: "Correcion de Estilo").save(flush: true)
    	new Etapa(nombre: "Implementacion").save(flush: true)
    	new Etapa(nombre: "CargasISO").save(flush: true)

    	new Fase(nombre: "Identificacion de necesidades").save(flush: true)
    	new Fase(nombre: "Elaboracion").save(flush: true)
    	new Fase(nombre: "Revision").save(flush: true)
    	new Fase(nombre: "Aprobacion").save(flush: true)
    	new Fase(nombre: "Certificado").save(flush: true)
    	new Fase(nombre: "Alcance").save(flush: true)
    	new Fase(nombre: "Observaciones en Mapeo").save(flush: true)

    	new Fase(nombre: "Marca de agua").save(flush: true)
    	new Fase(nombre: "Formato de Plantilla").save(flush: true)
    	new Fase(nombre: "Ortografia").save(flush: true)
    	new Fase(nombre: "Lenguaje incluyente").save(flush: true)
    	new Fase(nombre: "Observaciones en Estilo").save(flush: true)

    	new Fase(nombre: "Codigo correcto").save(flush: true)
    	new Fase(nombre: "Marca de agua").save(flush: true)
    	new Fase(nombre: "Portada").save(flush: true)
    	new Fase(nombre: "Cuadro de control de cambios").save(flush: true)
    	new Fase(nombre: "Tabla de contenido").save(flush: true)
    	new Fase(nombre: "Antecedente").save(flush: true)
    	new Fase(nombre: "Objetivo").save(flush: true)
    	new Fase(nombre: "Alcance").save(flush: true)
    	new Fase(nombre: "Definicion").save(flush: true)
    	new Fase(nombre: "Medidas de seguridad").save(flush: true)
    	new Fase(nombre: "Requisito").save(flush: true)
    	new Fase(nombre: "Desarrollo").save(flush: true)
    	new Fase(nombre: "Diagrama de flujo").save(flush: true)
    	new Fase(nombre: "Anexo").save(flush: true)
    	new Fase(nombre: "Cantidad de anexos").save(flush: true)
    	new Fase(nombre: "Referencia").save(flush: true)
    	new Fase(nombre: "Convertir PDF").save(flush: true)
    	new Fase(nombre: "Fecha de entrega").save(flush: true)
    	new Fase(nombre: "Observaciones en Implementacion").save(flush: true)
    	
    	new Fase(nombre: "Codigo").save(flush: true)
    	new Fase(nombre: "Matriz").save(flush: true)
    	new Fase(nombre: "Copia controlada").save(flush: true)
    	new Fase(nombre: "PDF").save(flush: true)
    	new Fase(nombre: "Cargado").save(flush: true)
    	new Fase(nombre: "Fecha de carga").save(flush: true)
    	new Fase(nombre: "Claves por usuario").save(flush: true)
    	new Fase(nombre: "Observaciones en CargasISO").save(flush: true)

    	new OpcLlenado(idGrupo: 0, opcion: "String").save(flush: true)
    	new OpcLlenado(idGrupo: 1, opcion: "SI").save(flush: true)
    	new OpcLlenado(idGrupo: 1, opcion: "PENDIENTE").save(flush: true)
    	new OpcLlenado(idGrupo: 1, opcion: "NO").save(flush: true)
    	new OpcLlenado(idGrupo: 1, opcion: "SIN CAMBIOS").save(flush: true)
    	new OpcLlenado(idGrupo: 1, opcion: "NO APLICA").save(flush: true)
    }
    def destroy = {
    }
}