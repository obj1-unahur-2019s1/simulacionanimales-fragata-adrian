import animales.*
import wollok.game.*

class Comedero{
	var property position = game.at(9,10)
	const property image = "comedero.gif"
	
	var property racion = 0
	var property pesoMaximo = 0
	
	method atender(animal){ 
		if(animal.peso() < pesoMaximo and animal.tieneHambre()){ 
			animal.comer()
		}
	}
	method necesitaRecarga() { return racion < 10 }
	method recargar() { racion += 30 }
	 
}