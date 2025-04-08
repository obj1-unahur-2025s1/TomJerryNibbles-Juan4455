object tom {

    var ultimoRatonComido = jerry
    var distanciaRecorrida = 0

    var energia = 50
    method energia() {return energia} 

    method comer(unRaton) {
        energia += (12 + unRaton.peso())
        ultimoRatonComido = unRaton
    }

    method correr(metro){

        energia = energia - (metro * 0.5)
        distanciaRecorrida += metro

    }

    method velocidadMaxima() {
        return 5 + energia/10
    }

    method puedeCazar(distancia) {
        return energia >= distancia/2
    }

    method cazar(unRaton, unaDistancia) {
      if(self.puedeCazar(unaDistancia)){
        self.correr(unaDistancia)
        self.comer(unRaton)
      }
    }
}

object jerry {

var edad = 2  

method cumplirAnios(){
    edad += 1
}

method peso() = edad*20

}

object nibbles {
method edad() =  1.75
method peso() = 35

}

object jorgito {

    var peso = 30

    method peso() {
        return peso
    } 

    method peso(nuevoPeso) {
      peso = nuevoPeso
    }

}
