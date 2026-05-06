object bicicleta {
    method peso() {
        return 5
    }
}

object camion {
    var cantidadDeAcoplados = 1

    method cantidadDeAcoplados() = cantidadDeAcoplados
    method peso() = 500 * cantidadDeAcoplados

    method cantidadDeAcoplados(unaCantidad) { cantidadDeAcoplados = unaCantidad }
}