(define (problem joint_teleport-assistance6_problem_80)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-4 pos0-5 pos0-6 pos1-1 pos1-3 pos1-4 pos1-5 pos1-6 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos3-0 pos3-3 pos3-4 pos3-5 pos3-6 pos4-0 pos4-1 pos4-2 pos4-4 pos4-5 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-6 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos5-4 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos5-1 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos1-1)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-walk pos0-5 pos0-6)
    (adj-walk pos0-6 pos0-5)
    (adj-walk pos0-5 pos1-5)
    (adj-walk pos1-5 pos0-5)
    (adj-walk pos0-6 pos1-6)
    (adj-walk pos1-6 pos0-6)
    (adj-walk pos1-1 pos2-1)
    (adj-walk pos2-1 pos1-1)
    (adj-walk pos1-3 pos1-4)
    (adj-walk pos1-4 pos1-3)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-walk pos1-4 pos1-5)
    (adj-walk pos1-5 pos1-4)
    (adj-walk pos1-4 pos2-4)
    (adj-walk pos2-4 pos1-4)
    (adj-walk pos1-5 pos1-6)
    (adj-walk pos1-6 pos1-5)
    (adj-walk pos1-5 pos2-5)
    (adj-walk pos2-5 pos1-5)
    (adj-walk pos1-6 pos2-6)
    (adj-walk pos2-6 pos1-6)
    (adj-walk pos2-0 pos2-1)
    (adj-walk pos2-1 pos2-0)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
    (adj-walk pos2-1 pos2-2)
    (adj-walk pos2-2 pos2-1)
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-3 pos2-4)
    (adj-walk pos2-4 pos2-3)
    (adj-walk pos2-3 pos3-3)
    (adj-walk pos3-3 pos2-3)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos2-5 pos2-6)
    (adj-walk pos2-6 pos2-5)
    (adj-walk pos2-5 pos3-5)
    (adj-walk pos3-5 pos2-5)
    (adj-walk pos2-6 pos3-6)
    (adj-walk pos3-6 pos2-6)
    (adj-walk pos3-0 pos4-0)
    (adj-walk pos4-0 pos3-0)
    (adj-walk pos3-3 pos3-4)
    (adj-walk pos3-4 pos3-3)
    (adj-walk pos3-4 pos3-5)
    (adj-walk pos3-5 pos3-4)
    (adj-walk pos3-4 pos4-4)
    (adj-walk pos4-4 pos3-4)
    (adj-walk pos3-5 pos3-6)
    (adj-walk pos3-6 pos3-5)
    (adj-walk pos3-5 pos4-5)
    (adj-walk pos4-5 pos3-5)
    (adj-walk pos4-0 pos4-1)
    (adj-walk pos4-1 pos4-0)
    (adj-walk pos4-0 pos5-0)
    (adj-walk pos5-0 pos4-0)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-1 pos5-1)
    (adj-walk pos5-1 pos4-1)
    (adj-walk pos4-2 pos5-2)
    (adj-walk pos5-2 pos4-2)
    (adj-walk pos4-4 pos4-5)
    (adj-walk pos4-5 pos4-4)
    (adj-walk pos4-4 pos5-4)
    (adj-walk pos5-4 pos4-4)
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
    (at-prime pos0-6)
  )
)
(:metric minimize (total-cost))
)
