import vehiculos.*
import destinos.*
object roberto {
    var vehiculo = bicicleta

    method pesoTotal() = self.pesoPropio() + vehiculo.peso()
    method pesoPropio() = 90
    method puedeLlamar() = false 
    method puedeEntregar(destino) = destino.dejarPasarA(self)
    
    method cambiarTransporte(unVehiculo) { vehiculo = unVehiculo }
}

object chuck {
    method pesoTotal() = 80
    method puedeLlamar() = true
    method puedeEntregar(destino) = destino.dejarPasarA(self)
}

object neo {
    var credito = 10

    method pesoTotal() = 0
    method puedeLlamar() = credito > 0
    method puedeEntregar(destino) = destino.dejarPasarA(self)

    method cargarCredito(cantidad) { credito = credito + cantidad }
}