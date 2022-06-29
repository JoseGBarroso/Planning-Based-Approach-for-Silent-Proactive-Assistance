(define (domain joint_teleport-assistance7_domain)
(:requirements :typing :action-costs)

(:types
    place telstatus - object
)

(:constants
    enabled disabled - telstatus
)

(:predicates
    (prime_turn)
    (supporter_turn)
    (at-prime ?p -  place)
    (at-teleport ?p - place ?s -  telstatus)
    (teleport_can_be_activated)
    (is-goal ?p -  place)
    (free ?p -  place)
    (adj-walk ?p1 - place ?p2 -  place)
)

(:functions
    (total-cost) - number
)

(:action sup_activate-teleport
    :parameters (?pos1 ?pos2 - place)
    :precondition (and
        (supporter_turn)
        (teleport_can_be_activated)
        (at-teleport ?pos1 disabled)
        (is-goal ?pos2)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (at-teleport ?pos1 enabled)
        (not (teleport_can_be_activated))
        (not (at-teleport ?pos1 disabled))
        (not (free ?pos2))
        (increase (total-cost) 1.0)
    )
)

(:action sup_use-teleport
    :parameters (?pos1 ?pos2 - place)
    :precondition (and
        (supporter_turn)
        (at-prime ?pos1)
        (at-teleport ?pos1 enabled)
        (is-goal ?pos2)
    )
    :effect (and
        (prime_turn)
        (not (supporter_turn))
        (at-prime ?pos2)
        (not (at-prime ?pos1))
        (increase (total-cost) 1.0)
    )
)

(:action pri_walk
    :parameters (?from - place ?to - place)
    :precondition (and
        (prime_turn)
        (adj-walk ?from ?to)
        (free ?to)
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
