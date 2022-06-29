(define (domain teleport-assistance7_supporter)
  (:requirements :typing :action-costs)
  (:types place telStatus - object)

  (:constants enabled disabled - telStatus)

  (:predicates 
	(at-prime ?p - place)
	(at-teleport ?p - place ?s - telStatus)
    (teleport_can_be_activated)
    (is-goal ?p - place)
	(free ?p - place)
  )

  (:functions
  	(total-cost) - number
  )




  (:action activate-teleport
        :parameters (?pos1 ?pos2 - place)
        :precondition (and 
            (teleport_can_be_activated)
			(at-teleport ?pos1 disabled)
			(is-goal ?pos2))
        :effect (and 
			(not (teleport_can_be_activated))
			(not (at-teleport ?pos1 disabled))
			(at-teleport ?pos1 enabled)
			(not (free ?pos2))
			(increase (total-cost) 1))
  )



  (:action use-teleport
        :parameters (?pos1 ?pos2 - place)
        :precondition (and 
			(at-prime ?pos1) 
			(at-teleport ?pos1 enabled)
			(is-goal ?pos2))
        :effect (and 
			(at-prime ?pos2)
			(not (at-prime ?pos1))
			(increase (total-cost) 1))
  )



)



