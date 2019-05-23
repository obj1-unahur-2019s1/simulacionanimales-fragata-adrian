import animales.*
import wollok.game.*

class Comedero{
	var property position = game.at(9,10)
	const property image = "comedero.gif"
	
	var property tamanioRacion = 20
	var property raciones = 60
	var property pesoMaximo = 300
	
	
	method puedeAtender(animal) {
		return animal.tieneHambre() and animal.peso() <= pesoMaximo
	}
	method atender(animal){ 
		animal.comer(tamanioRacion)
		raciones -= 1
	}
	method necesitaRecarga() { return raciones < 10 }
	method recargar() { raciones += 30 }
	 
}