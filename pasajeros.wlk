object neo {
  //QUE COMPORTAMIENTO TIENE? CLAVE
  //tiene que hacer o decir cosas
  var energia = 100
  method esElElegido() {
    return true
  }
  //PUEDE SALTAR Y CUANDO SALTA PASA ALGO
  method saltar() {
      //hace que la energia pierde a la mitad
    energia = energia * 0.5
  }
  method vitalidad() {
    //vitalidad se calcula a partir de energia por eso no se necesita poner una variable de vitalidad
    return energia * 0.1
  }
}
object morfeo {
    //ACA SE PONE LA VARIABLE VITALIDAD PORQUE DICE QUE PUEDE VARIAR
    var vitalidad = 8
    var estaCansado = false
    method esElElegido() {
      return false
    }
    method saltar() {
        estaCansado != estaCansado
        //aca invertis el estado uno o el otro dependiendo en base a como esta
        //cuadno salta se cansa, y cuando salta de vuelta se descansa
        //su vitalidad solo cambia en el metodo saltar y ponerlo como property seria erroneo
        vitalidad = 0.max(vitalidad -1)

    }
    //MORFEO NO NECESITA ENERGIA PORQUE CADA OBJETO VA POR SEPARADO
    method vitalidad() {
      return vitalidad
    }
}
object trinity {
    method esElElegido() {
      return false 
    }

    method vitalidad() {
      return 0
    }
    method saltar() {
      
    }
}