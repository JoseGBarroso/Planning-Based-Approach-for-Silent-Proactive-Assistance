(define (problem joint_teleport-assistance6_problem_152)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-2 pos0-5 pos0-8 pos1-0 pos1-3 pos1-4 pos2-0 pos2-4 pos2-5 pos3-0 pos3-1 pos3-4 pos3-5 pos4-1 pos4-2 pos4-3 pos4-5 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-6 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos1-4 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos3-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos3-5)
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
    (adj-walk pos1-3 pos1-4)
    (adj-walk pos1-4 pos1-3)
    (adj-walk pos1-4 pos2-4)
    (adj-walk pos2-4 pos1-4)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos2-5 pos3-5)
    (adj-walk pos3-5 pos2-5)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-walk pos3-1 pos4-1)
    (adj-walk pos4-1 pos3-1)
    (adj-walk pos3-4 pos3-5)
    (adj-walk pos3-5 pos3-4)
    (adj-walk pos3-5 pos4-5)
    (adj-walk pos4-5 pos3-5)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-1 pos5-1)
    (adj-walk pos5-1 pos4-1)
    (adj-walk pos4-2 pos4-3)
    (adj-walk pos4-3 pos4-2)
    (adj-walk pos4-2 pos5-2)
    (adj-walk pos5-2 pos4-2)
    (adj-walk pos4-3 pos5-3)
    (adj-walk pos5-3 pos4-3)
    (adj-walk pos4-5 pos5-5)
    (adj-walk pos5-5 pos4-5)
    (adj-walk pos5-0 pos5-1)
    (adj-walk pos5-1 pos5-0)
    (adj-walk pos5-1 pos5-2)
    (adj-walk pos5-2 pos5-1)
    (adj-walk pos5-2 pos5-3)
    (adj-walk pos5-3 pos5-2)
    (adj-walk pos5-3 pos5-4)
    (adj-walk pos5-4 pos5-3)
    (adj-walk pos5-4 pos5-5)
    (adj-walk pos5-5 pos5-4)
    (adj-walk pos5-5 pos5-6)
    (adj-walk pos5-6 pos5-5)
)

(:goal
  (and
    (at-prime pos1-0)
  )
)
(:metric minimize (total-cost))
)
