//## Elementos que pueden ser atacados.
class Hogar {
    var mugre
    const comfort
    method esBueno() = comfort >= mugre / 2
    method efectoDeAtaque(unaPlaga) {
        mugre = unaPlaga.danio()
    }
}

class Huerta {
    var produccion
    method esBueno() = produccion > nivelMinimoDeProduccion
    method efectoDeAtaque(unaPlaga) {
        nivelMinimoDeProduccion.valor(unaPlaga.danio() * 0.10)
        if (unaPlaga.trasmitirEnfermedades()) {
            nivelMinimoDeProduccion.valor(nivelMinimoDeProduccion.valor() - 10)
        }
    }
}

class Mascota {
    var nivelDeSalud
    method esBueno() = nivelDeSalud > 250
    method efectoDeAtaque(unaPlaga) {
        if (unaPlaga.trasmitirEnfermedades()) {
            nivelDeSalud = unaPlaga.danio()
        }
    }
}
object nivelMinimoDeProduccion {
    var property valor = 500 
}

class Barrio {
    const elementos = []
    method esCopado() {
        var mitad = elementos.size() / 2
        elementos.filter({elemento => elemento.esBueno()}).size() > mitad
     }
    
}
