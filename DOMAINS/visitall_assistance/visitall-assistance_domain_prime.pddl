(define (domain visitall-assistance_prime)
  (:requirements :typing :action-costs)
  (:types place - object)

  (:predicates 
	(connected ?x ?y - place)
	(at-prime ?x - place)
	(visited ?x - place)
  )

  (:functions
  	(total-cost) - number
  )



  (:action move 
        :parameters (?curpos ?nextpos - place)
        :precondition (and 
		(at-prime ?curpos) 
		(connected ?curpos ?nextpos))
        :effect (and 
		(at-prime ?nextpos) 
		(not (at-prime ?curpos))
		(visited ?nextpos) 
		(increase (total-cost) 1))
  )



)



