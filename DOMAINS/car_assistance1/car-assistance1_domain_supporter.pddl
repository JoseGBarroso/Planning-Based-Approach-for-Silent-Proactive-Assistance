(define (domain car-assistance1_supporter)
  (:requirements :typing :action-costs)
  (:types place car - object)

  (:predicates
   (adj-walk ?s1 - place ?s2 - place)
   (adj-car ?s1 - place ?s2 - place)
   (at-supporter ?s - place)
   (at-car ?car - car ?s - place)
   (supporter-inside ?car - car)
   (free ?car - car)
   
   )

    (:functions
     (total-cost) - number
  )



  (:action walk-supporter
    :parameters (?from - place ?to - place)
    :precondition (and
		       (adj-walk ?from ?to)
		       (at-supporter ?from))
    :effect (and (not (at-supporter ?from))
		 (at-supporter ?to)
                 (increase (total-cost) 1)))



  (:action get-into-car-supporter
    :parameters (?position - place ?car - car)
    :precondition (and
		       (at-supporter ?position)
		       (at-car ?car ?position)
		       (free ?car))
    :effect (and (not (at-supporter ?position))
		 (supporter-inside ?car)
		 (not (free ?car))
                 (increase (total-cost) 1)))



  (:action get-out-car-supporter
    :parameters (?position - place ?car - car)
    :precondition (and
		       (supporter-inside ?car)
		       (at-car ?car ?position))
    :effect (and (not (supporter-inside ?car))
		 (at-supporter ?position)
		 (free ?car)
                 (increase (total-cost) 1)))



  (:action drive-supporter
    :parameters (?from - place ?to - place ?car - car)
    :precondition (and
		       (adj-car ?from ?to)
		       (at-car ?car ?from)
		       (supporter-inside ?car))
    :effect (and (not (at-car ?car ?from))
		 (at-car ?car ?to)
                 (increase (total-cost) 1)))



  )
  
