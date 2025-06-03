class Plaga {
    var poblacion
    method trasmitirEnfermedades() = poblacion >= 10 && self.condicionAdicional()
    method condicionAdicional() //clase abstracta, no puede instanciarse 
    //method danio() = poblacion
    method efectoDeAtacar(){
        poblacion += poblacion * 0.10
    }
}

class Cucarachas inherits Plaga{
    var pesoPromedio
    method danio() = poblacion * 0.5
    //override method danio() = super() *o.5
    override method trasmitirEnfermedades() = super() && pesoPromedio >= 10// ver consgina
    //override method condicionAdiciona() = pesoPromedio >= 10
    override method efectoDeAtacar() {
        super()
        pesoPromedio += 2
    }
}

class Pulgas inherits Plaga{
    method danio() = poblacion * 2
    //override method danio() = super() * 2
}
class Garrapatas inherits Pulgas{
    override method efectoDeAtacar() {poblacion += poblacion * 0.20}
}
class Mosquitos inherits Plaga{
    method danio() = poblacion
    //override method danio() = super()
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
