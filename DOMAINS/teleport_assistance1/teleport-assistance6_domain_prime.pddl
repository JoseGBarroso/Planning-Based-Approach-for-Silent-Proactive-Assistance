(define (domain teleport-assistance6_prime)
  (:requirements :typing :action-costs)
  (:types place - object)

  (:predicates 
	(adj-walk ?p1 - place ?p2 - place)
	(at-prime ?p - place)
  )

  (:functions
  	(total-cost) - number
  )



  (:action walk
    :parameters (?from - place ?to - place)
    :precondition (and
		       (adj-walk ?from ?to)
		       (at-prime ?from))
    :effect (and (not (at-prime ?from))
		 (at-prime ?to)
                 (increase (total-cost) 1)))



)




