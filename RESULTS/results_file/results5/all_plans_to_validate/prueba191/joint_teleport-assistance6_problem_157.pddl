(define (problem joint_teleport-assistance6_problem_157)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-1 pos0-2 pos1-0 pos1-2 pos1-3 pos2-0 pos2-3 pos3-0 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-3 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos4-2 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos5-1 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos4-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos3-0)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
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
    (adj-walk pos4-3 pos5-3)
    (adj-walk pos5-3 pos4-3)
    (adj-walk pos5-0 pos5-1)
    (adj-walk pos5-1 pos5-0)
)

(:goal
  (and
    (at-prime pos0-2)
  )
)
(:metric minimize (total-cost))
)
