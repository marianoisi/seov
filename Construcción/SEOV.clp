(defglobal MAIN ?*sum1* = 0)

(deffunction MAIN::NuevoCaso ())

(deftemplate MAIN::Suma
   (slot Nombre (type INTEGER))
   (slot SumaActual (type INTEGER)))



(deftemplate MAIN::Preguntas
      	(slot numero (type INTEGER))

      	(slot tipo  (type SYMBOL) (allowed-symbols H P))

      	(slot pregunta (type SYMBOL) (allowed-symbols I D))
)


(deftemplate MAIN::FigurasAnalogas
      	(slot numero (type INTEGER))

      	(slot tipo  (type SYMBOL) (allowed-symbols H P))

      	(slot pregunta (type INTEGER))
)

(deftemplate MAIN::Logica

      	(slot numero (type INTEGER))

      	(slot tipo  (type SYMBOL) (allowed-symbols H P))

      	(slot pregunta (type SYMBOL) (allowed-symbols a b c d))
)

(deftemplate MAIN::SerieNumeros

      	(slot numero (type INTEGER))

      	(slot tipo  (type SYMBOL) (allowed-symbols H P))

      	(slot pregunta (type INTEGER))
)

(deftemplate MAIN::Problemas

      	(slot numero (type INTEGER))

      	(slot tipo  (type SYMBOL) (allowed-symbols H P))

      	(slot pregunta (type SYMBOL) (allowed-symbols a b c d))
)

(deftemplate MAIN::Sinonimos

      	(slot numero (type INTEGER))

      	(slot tipo  (type SYMBOL) (allowed-symbols H P))

      	(slot pregunta (type SYMBOL) (allowed-symbols a b c d))
)

(defrule MAIN::IQ1

    	(Preguntas (numero 1) (tipo H) (pregunta I))
 
  =>
 (bind ?*sum1* (+ ?*sum1* 1))


)
	
(defrule MAIN::IQ2
    	(Preguntas (numero 2) (tipo H) (pregunta I))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 2))
    
)

(defrule MAIN::IQ3
    	(SemejandeFiguras (numero 1) (tipo H) (pregunta 3))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 2))

)


(defrule MAIN::IQ4
    	(SemejandeFiguras (numero 2) (tipo H) (pregunta 4))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 2))
    
)
(defrule MAIN::IQ5
    	(FigurasAnalogas (numero 1) (tipo H) (pregunta 3))
 
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    	
)
(defrule MAIN::IQ6
    	(FigurasAnalogas (numero 2) (tipo H) (pregunta 1))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    	
)
(defrule MAIN::IQ7
    	(Logica (numero 1) (tipo H) (pregunta b))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    	
)
(defrule MAIN::IQ8
    	(Logica (numero 2) (tipo H) (pregunta a))
 
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    
)
(defrule MAIN::IQ9
    	(SeriedeNumeros (numero 2) (tipo H) (pregunta 27))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    	
)
(defrule MAIN::IQ10
    	(SeriedeNumeros (numero 3) (tipo H) (pregunta 7))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 2))
    	
)
(defrule MAIN::IQ11
    	(Problemas (numero 2) (tipo H) (pregunta c))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    	
)
(defrule MAIN::IQ12
    	(Problemas (numero 4) (tipo H) (pregunta b))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    	
)
(defrule MAIN::IQ13
    	(Sinonimos (numero 1) (tipo H) (pregunta b))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    	
)
(defrule MAIN::IQ15
    	(Sinonimos (numero 3) (tipo H) (pregunta c))
 	
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
    	
)
