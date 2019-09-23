import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
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
		return ( cosas.all ({cosa => cosa.esComida()}))
	}
	
	
}
