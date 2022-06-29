(define (domain joint_visitall-assistance_domain)
(:requirements :typing :action-costs)

(:types
    place - object
)

(:constants
)

(:predicates
    (prime_turn)
    (supporter_turn)
    (connected ?x ?y -  place)
    (not-connected ?x ?y -  place)
    (at-prime ?x -  place)
    (visited ?x -  place)
)

(:functions
    (total-cost) - number
)

(:action sup_create-connection
    :parameters (?a ?b - place)
    :precondition (and
        (supporter_turn)
        (not-connected ?a ?b)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (connected ?a ?b)
        (not (not-connected ?a ?b))
        (increase (total-cost) 1.0)
    )
)

(:action pri_move
    :parameters (?curpos ?nextpos - place)
    :precondition (and
        (prime_turn)
        (at-prime ?curpos)
        (connected ?curpos ?nextpos)
    )
    :effect (and
        (supporter_turn)
        (not (prime_turn))
        (at-prime ?nextpos)
        (visited ?nextpos)
        (not (at-prime ?curpos))
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
