import panetas.*
class Personas {
	var property edad=10
	
	
	method inteligencia() =if (edad.between(20,40))12  else  8
		
	method tributo(planeta){}
	
	method potencia()= 20
	
	method destacable() = edad==25 or edad==35
	method valor()= self.potencia() + self.inteligencia()
}

class Atletas inherits Personas{
	var property masaMus=4
	var property tecnicas=2
	
	
	override method potencia()= super() + (masaMus*tecnicas)
	
	override method  destacable() = super() or tecnicas > 5
	
	method entrenar(dia) {masaMus += dia / 5 }
	
	method aprenderTec(){tecnicas++}
	override method tributo(planeta) {planeta.construirMurall(2)}
	
}


class Docente inherits Personas{
	var property curso=0
	
	override method inteligencia() = super() +(curso*2)
	override method destacable() = curso >3
	override method tributo(planeta){planeta.fundarMuseo()}
	override method valor() = super() + 5
}

class Soldado inherits Personas{
	override method potencia()= super() + (masaMus*tecnicas)
	override method tributo(planeta){planeta.construirMurall(5)}
}

object pistola inherits Personas {
	var property  largo=0
	override method potencia()= if (edad > 30) self.potencia()*3 else self.potencia()*2
}

object espada inherits Personas{
	var property peso =0
	
	override method potencia()= if (edad < 40)  peso / 2 else 6
}