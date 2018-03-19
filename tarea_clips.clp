; Definicion de predicados
(deffacts familia
  (padre daniel_ruben daniel_ramirez)
  (padre daniel_ruben mariana_ramirez)
  (padre luis lourdes)
  (padre luis rosa)
  (padre luis gloria)
  (padre luis victor)
  (padre luis catalina_)
  (padre luis luis_)
  (padre luis_ pamela)
  (padre luis_ ximena)
  (madre lourdes daniel_ramirez)
  (madre lourdes mariana_ramirez)
  (madre catalina lourdes)
  (madre catalina rosa)
  (madre catalina gloria)
  (madre catalina victor)
  (madre catalina catalina_)
  (madre catalina luis_)
  (madre dora pamela)
  (madre dora ximena)
)

; Definicion de reglas

(defrule progenitor
  (or (padre ?x ?y) (madre ?x ?y))
  =>
  (assert (progenitor ?x ?y))
  (printout t ?x " es progenitor de " ?y crlf)
)

(defrule abuelo
  (progenitor ?x ?z) (progenitor ?z ?y)
  =>
  (assert (abuelo ?x ?y))
  (printout t ?x " es abuelo de " ?y crlf)
)

(defrule hermano
  (progenitor ?z ?x) (progenitor ?z ?y) (neq ?x ?y)
  =>
  (assert (hermano ?x ?y))
  (printout t ?x " es hermano de " ?y crlf)
)

(defrule tio
  (progenitor ?z ?y) (hermano ?x ?z)
  =>
  (assert (tio ?x ?y))
  (printout t ?x " es tio de " ?y crlf)
)

;(defrule primo)
;(defrule hijo)
