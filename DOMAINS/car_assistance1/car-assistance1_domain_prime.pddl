(define (domain car-assistance1_prime)
  (:requirements :typing :action-costs)
  (:types place car - object)

  (:predicates
   (adj-walk ?s1 - place ?s2 - place)
   (adj-car ?s1 - place ?s2 - place)
   (at-prime ?s - place)
   (at-car ?car - car ?s - place)
   (prime-inside ?car - car)
   (free ?car - car)
   
   )

    (:functions
     (total-cost) - number
  )



  (:action walk-prime
    :parameters (?from - place ?to - place)
    :precondition (and
		       (adj-walk ?from ?to)
		       (at-prime ?from))
    :effect (and (not (at-prime ?from))
		 (at-prime ?to)
                 (increase (total-cost) 1)))



  (:action get-into-car-prime
    :parameters (?position - place ?car - car)
    :precondition (and
		       (at-prime ?position)
		       (at-car ?car ?position)
		       (free ?car))
    :effect (and (not (at-prime ?position))
		 (prime-inside ?car)
		 (not (free ?car))
                 (increase (total-cost) 1)))



  (:action get-out-car-prime
    :parameters (?position - place ?car - car)
    :precondition (and
		       (prime-inside ?car)
		       (at-car ?car ?position))
    :effect (and (not (prime-inside ?car))
		 (at-prime ?position)
		 (free ?car)
                 (increase (total-cost) 1)))



  (:action drive-prime
    :parameters (?from - place ?to - place ?car - car)
    :precondition (and
		       (adj-car ?from ?to)
		       (at-car ?car ?from)
		       (prime-inside ?car))
    :effect (and (not (at-car ?car ?from))
		 (at-car ?car ?to)
                 (increase (total-cost) 1)))



  )
  
