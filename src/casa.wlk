import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa){ cosas.add(cosa) }
	
	method cantidadDeCosasCompradas(){ return cosas.size() }
	
	method tieneComida(){ 
		return cosas.any({ cosa => 
		cosa.esComida()
		})
	}
	
	method vieneDeEquiparse(){
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}
	
	method esDerrochona(){
		var precios = []
		
		 cosas.forEach({cosa => 
			precios.add(cosa.precio())
		})
		return precios.sum() >= 9000
	}
	
	method compraMasCara(){
		return cosas.max({cosa => 
			cosa.precio()
		})
	}
	
	method electrodomesticosComprados(){
																				//consultar...
	}
	
	method malaEpoca(){
		return cosas.all({cosa =>
			cosa.esComida()
		})
	}
	
	method queFaltaComprar(lista){
																				//consultar
		return lista.interseccion(cosas)
	}
	
	method faltaComida(){
		
		return cosas.count({cosa =>
			cosa.esComida() 
		}) < 2
	}
	

}
