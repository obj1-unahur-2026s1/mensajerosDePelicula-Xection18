import mensajeros.*
import destinos.*
import vehiculos.*
import paquetes.*

object empresa {
    const mensajeros = []

    method mensajeros() = mensajeros
    method contratar(mensajero) { mensajeros.add(mensajero) }
    method despedir(mensajero) { mensajeros.remove(mensajero) }
    method despedirTodos() { mensajeros.clear() }
    method mensajeriaGrande() = mensajeros.size() > 2
    method puedeSerEntregadoPorElPrimero() = paquete.puedeSerEntregadoPor(mensajeros.first())
    method pesoDelUltimoMensajero() = mensajeros.last().pesoTotal()
}