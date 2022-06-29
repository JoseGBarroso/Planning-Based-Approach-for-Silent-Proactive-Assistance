(define (domain termes-assistance1_prime)
  (:requirements :typing :action-costs)
  (:types numb position - object)

  (:predicates 
    (height ?p - position ?h - numb)
    (prime-at ?p - position)
    (free ?p - position)
    (has-block)
    (not-has-block)
    (SUCC ?n1 - numb ?n2 - numb)
    (NEIGHBOR ?p1 - position ?p2 - position)
    (IS-DEPOT ?p - position)
    (NOT-IS-DEPOT ?p - position)
  )

  (:functions
  	(total-cost) - number
  )



  (:action move 
        :parameters (?from - position ?to - position ?h - numb)
        :precondition (and 
        	(prime-at ?from)
        	(NEIGHBOR ?from ?to)
		(free ?to)
        	(height ?from ?h)
        	(height ?to ?h))
        :effect (and 
        	(not (prime-at ?from))
        	(prime-at ?to)
		(free ?from)
		(not (free ?to))
		(increase (total-cost) 1))
  )



  (:action move-up
        :parameters (?from - position ?hfrom - numb ?to - position ?hto - numb)
        :precondition (and 
        	(prime-at ?from)
        	(NEIGHBOR ?from ?to)
		(free ?to)
        	(height ?from ?hfrom)
        	(height ?to ?hto)
        	(SUCC ?hto ?hfrom))
        :effect (and 
        	(not (prime-at ?from))
        	(prime-at ?to)
		(free ?from)
		(not (free ?to))
		(increase (total-cost) 2))
  )



  (:action move-down 
        :parameters (?from - position ?hfrom - numb ?to - position ?hto - numb)
        :precondition (and 
        	(prime-at ?from)
        	(NEIGHBOR ?from ?to)
		(free ?to)
        	(height ?from ?hfrom)
        	(height ?to ?hto)
        	(SUCC ?hfrom ?hto))
        :effect (and 
        	(not (prime-at ?from))
        	(prime-at ?to)
		(free ?from)
		(not (free ?to))
		(increase (total-cost) 2))
  )



  (:action place-block
        :parameters (?rpos - position ?bpos - position ?hbefore - numb ?hafter - numb)
        :precondition (and
        	(prime-at ?rpos)
        	(NEIGHBOR ?rpos ?bpos)
        	(height ?rpos ?hbefore)
        	(height ?bpos ?hbefore)
        	(SUCC ?hafter ?hbefore)
        	(has-block)
        	(NOT-IS-DEPOT ?bpos))
        :effect (and
        	(not (height ?bpos ?hbefore))
        	(height ?bpos ?hafter)
        	(not (has-block))
        	(not-has-block)
		(increase (total-cost) 3))
  )



  (:action remove-block
        :parameters (?rpos - position ?bpos - position ?hbefore - numb ?hafter - numb)
        :precondition (and
        	(prime-at ?rpos)
        	(NEIGHBOR ?rpos ?bpos)
        	(height ?rpos ?hafter)
        	(height ?bpos ?hbefore)
        	(SUCC ?hbefore ?hafter)
        	(not-has-block))
        :effect (and
        	(not (height ?bpos ?hbefore))
        	(height ?bpos ?hafter)
        	(has-block)
        	(not (not-has-block))
		(increase (total-cost) 3))
  )



  (:action create-block
        :parameters (?p - position)
        :precondition (and
        	(prime-at ?p)
        	(not-has-block)
        	(IS-DEPOT ?p))
        :effect (and
        	(has-block)
        	(not (not-has-block))
		(increase (total-cost) 3))
  )



  (:action destroy-block
        :parameters (?p - position)
        :precondition (and
        	(prime-at ?p)
        	(has-block)
        	(IS-DEPOT ?p))
        :effect (and
        	(not (has-block))
        	(not-has-block)
		(increase (total-cost) 2))
  )



)



