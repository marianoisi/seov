(deffunction MAIN::NuevoCaso ())
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
(deftemplate MAIN::Semejanza
 		 (slot numero (type INTEGER))

 		 (slot tipo  (type SYMBOL) (allowed-symbols H P))

 		 (slot pregunta (type INTEGER))
)

(deftemplate MAIN::Logica

 		 (slot numero (type INTEGER))

 		 (slot tipo  (type SYMBOL) (allowed-symbols H P))

 		 (slot pregunta (type SYMBOL) (allowed-symbols a b c d))
)

(deftemplate MAIN::Serie

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
   	 (Semejanza (numero 1) (tipo H) (pregunta 3))
	 
  =>
  (bind ?*sum1* (+ ?*sum1* 2))

)


(defrule MAIN::IQ4
   	 (Semejanza (numero 2) (tipo H) (pregunta 4))
	 
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
   	 (Serie (numero 2) (tipo H) (pregunta 27))
	 
  =>
  (bind ?*sum1* (+ ?*sum1* 1))
   	 
)
(defrule MAIN::IQ10
   	 (Serie (numero 3) (tipo H) (pregunta 7))
	 
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





(load C:\Users\proyecto\Downloads\SEDECP.clp)

(deffunction NuevoCaso

()
(printout t "PREGUNTA 1: Escoge Izquierda o Derecha (I/D)" crlf)
(bind ?I (read))
(assert (Preguntas (numero 1) (tipo H) (pregunta ?I)))
(printout t "PREGUNTA 2: Escoge Izquierda o Derecha (I/D)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 2) (tipo H) (pregunta ?respuesta)))

(printout t "Semejanza de Figuras 1: Escoge su respuesta ( 1 2 3 4)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 1) (tipo H) (pregunta ?respuesta)))

(printout t "Semejanza de Figuras 2: Escoge su respuesta ( 1 2 3 4)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 2) (tipo H) (pregunta ?respuesta)))

(printout t "Figuras Análogas 1: Escoge su respuesta ( 1 2 3 4)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 1) (tipo H) (pregunta ?respuesta)))

(printout t "Figuras Análogas 2: Escoge su respuesta ( 1 2 3 4)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 2) (tipo H) (pregunta ?respuesta)))

(printout t "Logica 1: Escoge su respuesta (a b c)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 1) (tipo H) (pregunta ?respuesta)))

(printout t "Logica 2: Escoge su respuesta (a b c)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 2) (tipo H) (pregunta ?respuesta)))

(printout t "Serie de Números 1: Escoge su respuesta (SOLO NUMEROS)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 1) (tipo H) (pregunta ?respuesta)))

(printout t "Serie de Números 2: Escoge su respuesta (SOLO NUMEROS)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 2) (tipo H) (pregunta ?respuesta)))

(printout t "PROBLEMAS 2: Escoge su respuesta (a b c d e)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 2) (tipo H) (pregunta ?respuesta)))

(printout t "PROBLEMAS 3: Escoge su respuesta (a b c d e)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 3) (tipo H) (pregunta ?respuesta)))

(printout t "Sinonimos 1: Escoge su respuesta (a b c d)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 1) (tipo H) (pregunta ?respuesta)))

(printout t "Sinonimos 2: Escoge su respuesta (a b c d)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 2) (tipo H) (pregunta ?respuesta)))

(printout t "Sinonimos 3: Escoge su respuesta (a b c d)" crlf)
(bind ?respuesta (read))
(assert (Preguntas (numero 3) (tipo H) (pregunta ?respuesta)))
(run))