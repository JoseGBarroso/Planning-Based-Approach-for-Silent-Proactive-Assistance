(define (domain termes-assistance1_supporter)
  (:requirements :typing :action-costs)
  (:types numb position - object)

  (:predicates 
    (height ?p - position ?h - numb)
    (prime-at ?p - position)
    (free ?p - position)
    (crone-has-block)
    (crone-not-has-block)
    (crone-has-prime)
    (crone-not-has-prime)
    (SUCC ?n1 - numb ?n2 - numb)
    (NOT-IS-DEPOT ?p - position)
  )

  (:functions
  	(total-cost) - number
  )



  (:action put-down-block
        :parameters (?p - position ?hbefore - numb ?hafter - numb)
        :precondition (and
        	(height ?p ?hbefore)
		(free ?p)
        	(SUCC ?hafter ?hbefore)
        	(crone-has-block)
        	(NOT-IS-DEPOT ?p))
        :effect (and
        	(not (height ?p ?hbefore))
        	(height ?p ?hafter)
        	(not (crone-has-block))
        	(crone-not-has-block)
		(increase (total-cost) 1))
  )



  (:action pick-up-block
        :parameters (?p - position ?hbefore - numb ?hafter - numb)
        :precondition (and
        	(height ?p ?hbefore)
		(free ?p)
        	(SUCC ?hbefore ?hafter)
        	(crone-not-has-block)
        	(crone-not-has-prime))
        :effect (and
        	(not (height ?p ?hbefore))
        	(height ?p ?hafter)
        	(crone-has-block)
        	(not (crone-not-has-block))
		(increase (total-cost) 1))
  )



  (:action put-down-prime
        :parameters (?p - position ?hbefore - numb ?hafter - numb)
        :precondition (and
		(free ?p)
        	(crone-has-prime))
        :effect (and
        	(prime-at ?p)
		(not (free ?p))
        	(not (crone-has-prime))
        	(crone-not-has-prime)
		(increase (total-cost) 2))
  )



  (:action pick-up-prime
        :parameters (?p - position ?hbefore - numb ?hafter - numb)
        :precondition (and
        	(prime-at ?p)
        	(crone-not-has-block)
        	(crone-not-has-prime))
        :effect (and
        	(not (prime-at ?p))
        	(free ?p)
        	(crone-has-prime)
        	(not (crone-not-has-prime))
		(increase (total-cost) 2))
  )



)



