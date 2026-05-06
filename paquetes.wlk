import destinos.*
import mensajeros.*
import vehiculos.*

object paquete {
    var estaPago = false
    var destino = puenteBrooklyn

    method puedeSerEntregadoPor(mensajero) = mensajero.puedeEntregar(destino) and self.estaPago()
    method puedeSerEntregado(mensajero, unDestino) = mensajero.puedeEntregar(unDestino) and self.estaPago()
    method estaPago() = estaPago
    method destino() = destino 

    method cambiarDestino(unDestino) { destino = unDestino }
    method serPagado() { estaPago = true }
}

object paquetito {
    var destino = puenteBrooklyn

    method cambiarDestino(unDestino) { destino = unDestino }
    method estaPago() = true
}

object paquetonViajero {
    var destino = puenteBrooklyn
    var precio = 100

    method precio() = precio

    method puedeSerEntregado(mensajero, destino) {
        return mensajero.puedeEntregar(destino) and self.estaPago()
    }

    method estaPago() {
        return destino.pagar()
    }
    method cambiarDestino(unDestino) { destino = unDestino }
    method estaPago() = true
}

