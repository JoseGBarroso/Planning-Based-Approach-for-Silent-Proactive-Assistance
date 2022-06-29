(define (domain joint_termes-assistance1_domain)
(:requirements :typing :action-costs)

(:types
    numb position - object
)

(:constants
)

(:predicates
    (prime_turn)
    (supporter_turn)
    (height ?p - position ?h -  numb)
    (prime-at ?p -  position)
    (free ?p -  position)
    (crone-has-block)
    (crone-not-has-block)
    (crone-has-prime)
    (crone-not-has-prime)
    (succ ?n1 - numb ?n2 -  numb)
    (not-is-depot ?p -  position)
    (has-block)
    (not-has-block)
    (neighbor ?p1 - position ?p2 -  position)
    (is-depot ?p -  position)
)

(:functions
    (total-cost) - number
)

(:action sup_put-down-block
    :parameters (?p - position ?hbefore - numb ?hafter - numb)
    :precondition (and
        (supporter_turn)
        (height ?p ?hbefore)
        (free ?p)
        (succ ?hafter ?hbefore)
        (crone-has-block)
        (not-is-depot ?p)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (height ?p ?hafter)
        (crone-not-has-block)
        (not (height ?p ?hbefore))
        (not (crone-has-block))
        (increase (total-cost) 1.0)
    )
)

(:action sup_pick-up-block
    :parameters (?p - position ?hbefore - numb ?hafter - numb)
    :precondition (and
        (supporter_turn)
        (height ?p ?hbefore)
        (free ?p)
        (succ ?hbefore ?hafter)
        (crone-not-has-block)
        (crone-not-has-prime)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (height ?p ?hafter)
        (crone-has-block)
        (not (height ?p ?hbefore))
        (not (crone-not-has-block))
        (increase (total-cost) 1.0)
    )
)

(:action sup_put-down-prime
    :parameters (?p - position ?hbefore - numb ?hafter - numb)
    :precondition (and
        (supporter_turn)
        (free ?p)
        (crone-has-prime)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (prime-at ?p)
        (crone-not-has-prime)
        (not (free ?p))
        (not (crone-has-prime))
        (increase (total-cost) 2.0)
    )
)

(:action sup_pick-up-prime
    :parameters (?p - position ?hbefore - numb ?hafter - numb)
    :precondition (and
        (supporter_turn)
        (prime-at ?p)
        (crone-not-has-block)
        (crone-not-has-prime)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (free ?p)
        (crone-has-prime)
        (not (prime-at ?p))
        (not (crone-not-has-prime))
        (increase (total-cost) 2.0)
    )
)

(:action pri_move
    :parameters (?from - position ?to - position ?h - numb)
    :precondition (and
        (prime_turn)
        (prime-at ?from)
        (neighbor ?from ?to)
        (free ?to)
        (height ?from ?h)
        (height ?to ?h)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (prime-at ?to)
        (free ?from)
        (not (prime-at ?from))
        (not (free ?to))
        (increase (total-cost) 1000.0)
    )
)

(:action pri_move-up
    :parameters (?from - position ?hfrom - numb ?to - position ?hto - numb)
    :precondition (and
        (prime_turn)
        (prime-at ?from)
        (neighbor ?from ?to)
        (free ?to)
        (height ?from ?hfrom)
        (height ?to ?hto)
        (succ ?hto ?hfrom)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (prime-at ?to)
        (free ?from)
        (not (prime-at ?from))
        (not (free ?to))
        (increase (total-cost) 2000.0)
    )
)

(:action pri_move-down
    :parameters (?from - position ?hfrom - numb ?to - position ?hto - numb)
    :precondition (and
        (prime_turn)
        (prime-at ?from)
        (neighbor ?from ?to)
        (free ?to)
        (height ?from ?hfrom)
        (height ?to ?hto)
        (succ ?hfrom ?hto)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (prime-at ?to)
        (free ?from)
        (not (prime-at ?from))
        (not (free ?to))
        (increase (total-cost) 2000.0)
    )
)

(:action pri_place-block
    :parameters (?rpos - position ?bpos - position ?hbefore - numb ?hafter - numb)
    :precondition (and
        (prime_turn)
        (prime-at ?rpos)
        (neighbor ?rpos ?bpos)
        (height ?rpos ?hbefore)
        (height ?bpos ?hbefore)
        (succ ?hafter ?hbefore)
        (has-block)
        (not-is-depot ?bpos)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (height ?bpos ?hafter)
        (not-has-block)
        (not (height ?bpos ?hbefore))
        (not (has-block))
        (increase (total-cost) 3000.0)
    )
)

(:action pri_remove-block
    :parameters (?rpos - position ?bpos - position ?hbefore - numb ?hafter - numb)
    :precondition (and
        (prime_turn)
        (prime-at ?rpos)
        (neighbor ?rpos ?bpos)
        (height ?rpos ?hafter)
        (height ?bpos ?hbefore)
        (succ ?hbefore ?hafter)
        (not-has-block)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (height ?bpos ?hafter)
        (has-block)
        (not (height ?bpos ?hbefore))
        (not (not-has-block))
        (increase (total-cost) 3000.0)
    )
)

(:action pri_create-block
    :parameters (?p - position)
    :precondition (and
        (prime_turn)
        (prime-at ?p)
        (not-has-block)
        (is-depot ?p)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (has-block)
        (not (not-has-block))
        (increase (total-cost) 3000.0)
    )
)

(:action pri_destroy-block
    :parameters (?p - position)
    :precondition (and
        (prime_turn)
        (prime-at ?p)
        (has-block)
        (is-depot ?p)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (not-has-block)
        (not (has-block))
        (increase (total-cost) 2000.0)
    )
)

(:action pri_noop
    :parameters ()
    :precondition (and
        (prime_turn)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (increase (total-cost) 0)
    )
)

(:action sup_noop
    :parameters ()
    :precondition (and
        (supporter_turn)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (increase (total-cost) 0)
    )
)

)
