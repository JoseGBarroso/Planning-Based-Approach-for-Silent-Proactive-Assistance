(define (domain visitall-assistance_supporter)
  (:requirements :typing :action-costs)
  (:types place - object)

  (:predicates 
	(connected ?x ?y - place)
	(not-connected ?x ?y - place)
  )

  (:functions
  	(total-cost) - number
  )



  (:action create-connection 
        :parameters (?a ?b - place)
        :precondition (and 
		(not-connected ?a ?b))
        :effect (and 
		(connected ?a ?b) 
		(not (not-connected ?a ?b))
		(increase (total-cost) 1))
  )



)



