package mx.infinityweb
public enum Estatus {
    VIGOR('VIGOR'),
    APROBACION('APROBACION'),
    REVISION('REVISION')
    String id

    Estatus(String id) {
        this.id = id
    }
}