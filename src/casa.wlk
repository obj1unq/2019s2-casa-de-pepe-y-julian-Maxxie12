import cosas.* 
import cuentaBancaria.*

object casaDePepeYJulian {
	const cosas = []
	var cuenta = cuentaCorriente
	
	method comprar(cosa) {
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method gastar (importe) {
		cuenta.extraer(importe)
	}
	method cantidadDeCosasCompradas() {
		cosas.size()
	}
	method tieneComida() {
		return cosas.any ({cosa => cosa.esComida()})
	}
	
	method vieneDeEquiparse() {
		return cosas.last ({cosa => cosa.esElectrodomestico() or cosa.precio()> 8000})
	}
	method esDerrochona() {
		return (cosas.sum ({cosa => cosa.precio()})> 9000)
	}
	method compraMasCara() {
		return cosas.max ({cosa => cosa.precio()})
	}
	
	method electrodomesticosComprados() {		
		return cosas.filter ({cosa => cosa.esElectrodomestico()})
	}
	method malaEpoca() {
		return (cosas.all ({cosa => cosa.esComida()}))
	}
	
	method queFaltaComprar(lista) {
    		return  (lista.asSet().difference(cosas.asSet())).asList()
	}
	
	method faltaComida() {
		return (cosas.sum ({cosa => cosa.esComida()})> 2)
	}
	
}
