class Plaga {
    var poblacion
    method trasmitirEnfermedades() = poblacion >= 10 && self.condicionAdicional()
    method condicionAdicional() //clase abstracta, no puede instanciarse 
    method danio() = poblacion
}

class Cucarachas inherits Plaga{
    var pesoPromedio
    override method danio() = super() * 0.5
    override method trasmitirEnfermedades() = super() && pesoPromedio // ver consgina
}

class Pulgas inherits Plaga{
    override method danio() = super() * 2
}
class Garrapatas inherits Pulgas{
}
class Mosquitos inherits Plaga{
    override method danio() = super()
    override method trasmitirEnfermedades() = super() and poblacion % 3 == 0
}
/*
class Caracoles inherits Plaga {
    method trasmitirEnfermedades() = clima.llovio()
}
object clima {
    var property llovio = true
}
*/