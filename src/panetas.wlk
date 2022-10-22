import personas.*
class Planeta {
	const property personas=[]
	var property museo
	var property longMuralla=0
	
	method deleDiplo()=personas.filter({p=>p.destacable()}) 
	
	method defensa()=personas.filter({p=>p.potencia()>=30}).size()
	
	method esCulto()=museo >=2 and personas.all({p=>p.inteligencia()>=10})
	
	method potenciaReal()= personas.sum({p=>p.potencia()})
	
	method construirMurall(cant){longMuralla += cant}
	
	method fundarMuseo(){museo++}
	
	method potenciaAparente()= self.cantPersonas()* self.potenciaMaxDeHabitante()
	
	method cantPersonas()=personas.size()
	
	method potenciaMaxDeHabitante()=personas.map({p=>p.potencia()}).max()
	
	method refuerzo()= self.potenciaAparente()*2 > self.potenciaReal()
	
	method hacerTributo(){personas.forEach({p=>p.tributo(self)})}
	
	method avitanteValioso()=personas.map({p=>p.valor()>40})

	method apaciguar(planeta)=personas.avitanteValioso().forEach({p=>p.tributo(planeta)})
}


