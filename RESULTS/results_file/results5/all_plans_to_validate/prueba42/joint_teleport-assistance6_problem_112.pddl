(define (problem joint_teleport-assistance6_problem_112)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-2 pos0-4 pos1-0 pos1-4 pos4-0 pos4-1 pos4-2 pos4-4 pos5-0 pos5-2 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos4-1 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos4-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos5-2)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-walk pos4-0 pos4-1)
    (adj-walk pos4-1 pos4-0)
    (adj-walk pos4-0 pos5-0)
    (adj-walk pos5-0 pos4-0)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-2 pos5-2)
    (adj-walk pos5-2 pos4-2)
)

(:goal
  (and
    (at-prime pos5-0)
  )
)
(:metric minimize (total-cost))
)
