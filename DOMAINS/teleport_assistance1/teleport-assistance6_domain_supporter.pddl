(define (domain teleport-assistance6_supporter)
  (:requirements :typing :action-costs)
  (:types place telStatus - object)

  (:constants origin destination disabled - telStatus)

  (:predicates 
	(at-prime ?p - place)
	(at-teleport ?p - place ?s - telStatus)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
  )

  (:functions
  	(total-cost) - number
  )




  (:action activate-teleport-origin
        :parameters (?pos - place)
        :precondition (and 
            (teleport_origin_can_be_activated)
			(at-teleport ?pos disabled))
        :effect (and 
			(not (teleport_origin_can_be_activated))
			(not(at-teleport ?pos disabled))
			(at-teleport ?pos origin)
			(increase (total-cost) 1))
  )




  (:action activate-teleport-destination
        :parameters (?pos - place)
        :precondition (and 
            (teleport_destination_can_be_activated)
			(at-teleport ?pos disabled))
        :effect (and 
			(not (teleport_destination_can_be_activated))
			(not(at-teleport ?pos disabled))
			(at-teleport ?pos destination)
			(increase (total-cost) 1))
  )



  (:action use-teleport
        :parameters (?pos1 ?pos2 - place)
        :precondition (and 
			(at-prime ?pos1) 
			(at-teleport ?pos1 origin)
			(at-teleport ?pos2 destination))
        :effect (and 
			(at-prime ?pos2)
			(not (at-prime ?pos1))
			(increase (total-cost) 1))
  )



)



