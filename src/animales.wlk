import wollok.game.*

class Vaca {
	var property position = game.at(5,7) //3,5
	const property image = "vaca.gif"

	var property peso = 200
	var property tieneSed = false
	var property tieneHambre = false
	
	
	method comer(kilos){ 
		self.hambre()
		if(tieneHambre){ peso = peso + (kilos/2); tieneSed = true }
		else{ self.error("No tengo hambre") }
	}
	method beber(){ tieneSed = false; peso -= 1; self.hambre() }
	method hambre() { if(peso < 200){ tieneHambre = true } else if(peso > 200) { tieneHambre = false } }
	method perderPeso() { if(peso > 50){ peso -= (peso * 0.05); } }
	method puedeCaminar(){ if(peso < 50){self.error("Dame de comer")} }
}

class Gallina {
	var property position = game.at(5,7)
	const property image = "gallina.gif"
	
	const property peso = 4
	var property vecesQueComio = 0
	var property tieneSed = false
	var property tieneHambre = false
	
	method comer(kilos) { 
		vecesQueComio += 1
		if(vecesQueComio == 2 or vecesQueComio == 5 ){ tieneSed = true }
		else { tieneSed = false }
	}
	method beber() {  }
	method hambre() { if(vecesQueComio % 2 == 0){ tieneHambre = true } else { tieneHambre = false } }
	method perderPeso() {  }
	method puedeCaminar() {  }
}





