//## Elementos que pueden ser atacados.
class Hogar {
    var mugre
    const comfort
    method esBueno() = comfort >= mugre / 2
}

class Huerta {
    var produccion
    method esBueno() = produccion > nivelMinimoDeProduccion
}

class Mascota {
    var nivelDeSalud
    method esBueno() = nivelDeSalud > 250
}
object nivelMinimoDeProduccion {
    var property valor = 500 
}

class Barrio {
    const elementos = []
    method esCopado() = 
}
/*
# Plagas

Se trata de desarrollar un modelo que permita estudiar los efectos que se producen cuando una **plaga** ataca a un **elemento**.

Vamos a armarlo por partes.
	
A su vez, los elementos se agrupan en **barrios**; en cada barrio hay varios elementos.
- Saber si un barrio es _copado_, la condición es que tenga más elementos buenos que no-buenos. P.ej. si un barrio tiene
 7 elementos, 5 son buenos y 2 no, entonces es copado, pero si 3 son buenos y 4 no, entonces el barrio no es copado.
*/