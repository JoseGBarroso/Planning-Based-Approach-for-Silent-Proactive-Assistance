(define (problem joint_teleport-assistance6_problem_98)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-1 pos2-1 pos2-2 pos2-3 pos3-0 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-2 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos3-3 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos4-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos2-1)
    (adj-walk pos2-1 pos2-2)
    (adj-walk pos2-2 pos2-1)
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-3 pos3-3)
    (adj-walk pos3-3 pos2-3)
    (adj-walk pos3-0 pos4-0)
    (adj-walk pos4-0 pos3-0)
    (adj-walk pos3-3 pos4-3)
    (adj-walk pos4-3 pos3-3)
    (adj-walk pos4-0 pos4-1)
    (adj-walk pos4-1 pos4-0)
    (adj-walk pos4-0 pos5-0)
    (adj-walk pos5-0 pos4-0)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-1 pos5-1)
    (adj-walk pos5-1 pos4-1)
    (adj-walk pos4-2 pos4-3)
    (adj-walk pos4-3 pos4-2)
    (adj-walk pos4-2 pos5-2)
    (adj-walk pos5-2 pos4-2)
    (adj-walk pos5-0 pos5-1)
    (adj-walk pos5-1 pos5-0)
    (adj-walk pos5-1 pos5-2)
    (adj-walk pos5-2 pos5-1)
)

(:goal
  (and
    (at-prime pos4-0)
  )
)
(:metric minimize (total-cost))
)