(define (problem joint_teleport-assistance6_problem_106)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-3 pos0-8 pos1-0 pos1-1 pos1-4 pos1-5 pos1-8 pos2-2 pos2-4 pos2-5 pos2-6 pos2-7 pos3-0 pos3-2 pos3-7 pos4-1 pos4-3 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8 pos5-1 pos5-2 pos5-3 pos5-7 pos5-8 pos6-1 pos6-3 pos6-5 pos6-6 pos6-7 pos6-8 pos7-0 pos7-2 pos7-3 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos1-0 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos0-8 disabled)
    (at-teleport pos7-3 disabled)
    (at-teleport pos4-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos2-4)
    (adj-walk pos0-8 pos1-8)
    (adj-walk pos1-8 pos0-8)
    (adj-walk pos1-0 pos1-1)
    (adj-walk pos1-1 pos1-0)
    (adj-walk pos1-4 pos1-5)
    (adj-walk pos1-5 pos1-4)
    (adj-walk pos1-4 pos2-4)
    (adj-walk pos2-4 pos1-4)
    (adj-walk pos1-5 pos2-5)
    (adj-walk pos2-5 pos1-5)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-5 pos2-6)
    (adj-walk pos2-6 pos2-5)
    (adj-walk pos2-6 pos2-7)
    (adj-walk pos2-7 pos2-6)
    (adj-walk pos2-7 pos3-7)
    (adj-walk pos3-7 pos2-7)
    (adj-walk pos3-7 pos4-7)
    (adj-walk pos4-7 pos3-7)
    (adj-walk pos4-1 pos5-1)
    (adj-walk pos5-1 pos4-1)
    (adj-walk pos4-3 pos4-4)
    (adj-walk pos4-4 pos4-3)
    (adj-walk pos4-3 pos5-3)
    (adj-walk pos5-3 pos4-3)
    (adj-walk pos4-4 pos4-5)
    (adj-walk pos4-5 pos4-4)
    (adj-walk pos4-5 pos4-6)
    (adj-walk pos4-6 pos4-5)
    (adj-walk pos4-6 pos4-7)
    (adj-walk pos4-7 pos4-6)
    (adj-walk pos4-7 pos4-8)
    (adj-walk pos4-8 pos4-7)
    (adj-walk pos4-7 pos5-7)
    (adj-walk pos5-7 pos4-7)
    (adj-walk pos4-8 pos5-8)
    (adj-walk pos5-8 pos4-8)
    (adj-walk pos5-1 pos5-2)
    (adj-walk pos5-2 pos5-1)
    (adj-walk pos5-1 pos6-1)
    (adj-walk pos6-1 pos5-1)
    (adj-walk pos5-2 pos5-3)
    (adj-walk pos5-3 pos5-2)
    (adj-walk pos5-3 pos6-3)
    (adj-walk pos6-3 pos5-3)
    (adj-walk pos5-7 pos5-8)
    (adj-walk pos5-8 pos5-7)
    (adj-walk pos5-7 pos6-7)
    (adj-walk pos6-7 pos5-7)
    (adj-walk pos5-8 pos6-8)
    (adj-walk pos6-8 pos5-8)
    (adj-walk pos6-3 pos7-3)
    (adj-walk pos7-3 pos6-3)
    (adj-walk pos6-5 pos6-6)
    (adj-walk pos6-6 pos6-5)
    (adj-walk pos6-6 pos6-7)
    (adj-walk pos6-7 pos6-6)
    (adj-walk pos6-7 pos6-8)
    (adj-walk pos6-8 pos6-7)
    (adj-walk pos7-2 pos7-3)
    (adj-walk pos7-3 pos7-2)
)

(:goal
  (and
    (at-prime pos5-2)
  )
)
(:metric minimize (total-cost))
)
