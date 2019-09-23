object cuentaCorriente {
	var saldo = 200000
	
	method depositar(importe){
		saldo += importe
	} 
	method extraer(importe){
		if (importe > saldo) {
			self.error ("No se puede extraer un monton mayor al saldo")
	       }
	    saldo -= importe
	}       
	method  saldo() {
		return saldo
	}
}	

object cuentaConGastos {
	var saldo = 0
	
	method depositar (importe) {
		saldo += (importe - 20)
	}
	 
	method extraer (importe) {
		if (importe <= 1000) saldo -= importe -20
		else saldo -= (importe - importe/50)  
		
	}

}	
	

