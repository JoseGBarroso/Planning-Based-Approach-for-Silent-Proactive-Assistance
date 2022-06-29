(define (domain joint_car-assistance1_domain)
(:requirements :typing :action-costs)

(:types
    place car - object
)

(:constants
)

(:predicates
    (prime_turn)
    (supporter_turn)
    (adj-walk ?s1 - place ?s2 -  place)
    (adj-car ?s1 - place ?s2 -  place)
    (at-supporter ?s -  place)
    (at-car ?car - car ?s -  place)
    (supporter-inside ?car -  car)
    (free ?car -  car)
    (at-prime ?s -  place)
    (prime-inside ?car -  car)
)

(:functions
    (total-cost) - number
)

(:action sup_walk-supporter
    :parameters (?from - place ?to - place)
    :precondition (and
        (supporter_turn)
        (adj-walk ?from ?to)
        (at-supporter ?from)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (at-supporter ?to)
        (not (at-supporter ?from))
        (increase (total-cost) 1.0)
    )
)

(:action sup_get-into-car-supporter
    :parameters (?position - place ?car - car)
    :precondition (and
        (supporter_turn)
        (at-supporter ?position)
        (at-car ?car ?position)
        (free ?car)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (supporter-inside ?car)
        (not (at-supporter ?position))
        (not (free ?car))
        (increase (total-cost) 1.0)
    )
)

(:action sup_get-out-car-supporter
    :parameters (?position - place ?car - car)
    :precondition (and
        (supporter_turn)
        (supporter-inside ?car)
        (at-car ?car ?position)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (at-supporter ?position)
        (free ?car)
        (not (supporter-inside ?car))
        (increase (total-cost) 1.0)
    )
)

(:action sup_drive-supporter
    :parameters (?from - place ?to - place ?car - car)
    :precondition (and
        (supporter_turn)
        (adj-car ?from ?to)
        (at-car ?car ?from)
        (supporter-inside ?car)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (at-car ?car ?to)
        (not (at-car ?car ?from))
        (increase (total-cost) 1.0)
    )
)

(:action pri_walk-prime
    :parameters (?from - place ?to - place)
    :precondition (and
        (prime_turn)
        (adj-walk ?from ?to)
        (at-prime ?from)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (at-prime ?to)
        (not (at-prime ?from))
        (increase (total-cost) 1000.0)
    )
)

(:action pri_get-into-car-prime
    :parameters (?position - place ?car - car)
    :precondition (and
        (prime_turn)
        (at-prime ?position)
        (at-car ?car ?position)
        (free ?car)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (prime-inside ?car)
        (not (at-prime ?position))
        (not (free ?car))
        (increase (total-cost) 1000.0)
    )
)

(:action pri_get-out-car-prime
    :parameters (?position - place ?car - car)
    :precondition (and
        (prime_turn)
        (prime-inside ?car)
        (at-car ?car ?position)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (at-prime ?position)
        (free ?car)
        (not (prime-inside ?car))
        (increase (total-cost) 1000.0)
    )
)

(:action pri_drive-prime
    :parameters (?from - place ?to - place ?car - car)
    :precondition (and
        (prime_turn)
        (adj-car ?from ?to)
        (at-car ?car ?from)
        (prime-inside ?car)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (at-car ?car ?to)
        (not (at-car ?car ?from))
        (increase (total-cost) 1000.0)
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
