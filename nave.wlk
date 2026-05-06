import pasajeros.*

object nave {
  //esto es una lista de pasajeros la apunto a traves de pasajeros, pasajeros es una referencia al objeto lista que esta en los corchetes
  const pasajeros = []
  //se pone como constante y no como variable para que no se modifique la lista y siempre se la llame igual
  method subirALaNave(unPasajero) {
    if(pasajeros.contains(unPasajero)){
        self.error("el pasajero ya esta en la nave")
    } 
    //aca le aviso a la nave que el pasajero ya esta en la nave, self.error corta la ejecucion
    //ACA AGREGAS LOS PASAJEROS A LA NAVE , ES COMO INCORPORAR COSAS A LA LISTA
    //controlemos duplicados si un pasajero esta en la lista usamos una excepcion
    pasajeros.add(unPasajero)
  }
  method bajarseDeLaNave(unPasajero) {
   if(self.estaEnLaNave(unPasajero)){
        self.error("el pasajero ya esta en la nave")
    //aca adentro de un if va el metodo auxiliar
   }
   pasajeros.remove(unPasajero) 
  }
  method estaEnLaNave(unPasajero) {
    return pasajeros.contains(unPasajero)
    //metodo auxiliar para invocarlo con subir y bajarse de la nave
  }
  method cantidadPasajeros() {
    return pasajeros.size()
    //devuelve la cantidad de pasajeros que tiene la nave el size te consulta el total
  }
  method pasajerosConMayorVitalidad(){
    return pasajeros.max({p=>p.vitalidad()})
    //te transforma la lista en una lista del metodo que necesitas en este caso una lista de vitalidades de los que estna en la nave
  }
  method estaElElegido() {
    return pasajeros.any({p=>p.esElElegido()})
    //aca pregunta con any si un objeto de dentro de la lista es el elegido, y si es retorna true
  }
  method chocar() {
    pasajeros.forEach({p=>p.saltar()})
    pasajeros.clear()// -> vacia la lista
    //pasajeros.removeAll(pasajeros)//vacia la lista que le das
  }

}