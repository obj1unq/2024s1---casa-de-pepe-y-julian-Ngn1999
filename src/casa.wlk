object casaDePepeYJulian {

    const viveres = 50
    var presupuestoReparaciones = 0

    method tieneViveresSuficientes(){
        return viveres > 40
    }

    method necesitaReparaciones(){
        return presupuestoReparaciones > 0
    }

    method estaEnOrden(){
        return self.tieneViveresSuficientes() and not self.necesitaReparaciones()
    }

    method romperObjeto(valorObjetoRoto){
        presupuestoReparaciones = presupuestoReparaciones + valorObjetoRoto
    }
}

object cuentaCorriente {

    var saldo = 0

    method saldoActual(){
        return saldo
    }
    method depositar(unMonto){
        saldo = saldo + unMonto
    }

    method extraer(unMonto){
        saldo = saldo - unMonto
    }
}

object cuentaGastos {

    var saldo = 0

    method saldoActual(){
        return saldo
    }

    method depositarConCosto(unMonto, costoPorOperacion){
        saldo = saldo + unMonto - costoPorOperacion
    }

    method extraer(unMonto){
        saldo = saldo - unMonto
    }
}

object cuentaCombinada{

    method saldoActual(){
        return (cuentaPrimaria.saldoActual() + cuentaSecundaria.saldoActual())
    }

    method depositar(unMonto){
        cuentaPrimaria.saldoActual() + unMonto
    }

    method extraer(unMonto){
        if (cuentaPrimaria.saldoActual() >= cuentaSecundaria.saldoActual()){
            cuentaPrimaria.saldoActual() - unMonto
        } else {
            cuentaSecundaria.saldoActual() - unMonto
        }
    }
}

//Hola profes. Disculpen que no esté completa la actividad, pero la verdad es que ando perdido y 
//no termino de entender todo Wollok. Y para no entregar tarde, o simplemente no entregar nada, prefiero enviar lo poco que logré hacer.
//No entiendo la sintaxis como se usa, y muchas palabras que dicen me hacen perder.
//Intenté leer la página de Wollok pero me quedan dudas, y soy vergonsozo para preguntar en clase o en el Discord.
//Por lo que si el Lunes o el Miércoles quieren hablarme sobre mi ejercicio, o en la misma devolución, lo acepto. Pero si me pudieran dar una mano con esto, lo agradecería mucho de verdad.
//Nuevamente disculpas.