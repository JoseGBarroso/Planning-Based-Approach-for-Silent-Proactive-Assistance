(define (problem joint_teleport-assistance6_problem_24)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos0-8 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos2-0 pos2-1 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos3-0 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos4-6 pos4-7 pos5-0 pos5-3 pos5-6 pos5-7 pos5-8 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-6 pos6-7 pos6-8 pos7-0 pos7-2 pos7-3 pos7-4 pos7-5 pos7-6 pos7-7 pos7-8 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos4-3 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos4-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos6-3)
    (adj-walk pos0-0 pos0-1)
    (adj-walk pos0-1 pos0-0)
    (adj-walk pos0-0 pos1-0)
    (adj-walk pos1-0 pos0-0)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-1 pos1-1)
    (adj-walk pos1-1 pos0-1)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-walk pos0-3 pos1-3)
    (adj-walk pos1-3 pos0-3)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-walk pos0-5 pos0-6)
    (adj-walk pos0-6 pos0-5)
    (adj-walk pos0-5 pos1-5)
    (adj-walk pos1-5 pos0-5)
    (adj-walk pos0-6 pos0-7)
    (adj-walk pos0-7 pos0-6)
    (adj-walk pos0-6 pos1-6)
    (adj-walk pos1-6 pos0-6)
    (adj-walk pos0-7 pos0-8)
    (adj-walk pos0-8 pos0-7)
    (adj-walk pos0-7 pos1-7)
    (adj-walk pos1-7 pos0-7)
    (adj-walk pos1-0 pos1-1)
    (adj-walk pos1-1 pos1-0)
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
    (adj-walk pos1-1 pos1-2)
    (adj-walk pos1-2 pos1-1)
    (adj-walk pos1-1 pos2-1)
    (adj-walk pos2-1 pos1-1)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
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
    (adj-walk pos1-6 pos1-7)
    (adj-walk pos1-7 pos1-6)
    (adj-walk pos1-6 pos2-6)
    (adj-walk pos2-6 pos1-6)
    (adj-walk pos1-7 pos2-7)
    (adj-walk pos2-7 pos1-7)
    (adj-walk pos2-0 pos2-1)
    (adj-walk pos2-1 pos2-0)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
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
    (adj-walk pos2-6 pos2-7)
    (adj-walk pos2-7 pos2-6)
    (adj-walk pos2-6 pos3-6)
    (adj-walk pos3-6 pos2-6)
    (adj-walk pos2-7 pos2-8)
    (adj-walk pos2-8 pos2-7)
    (adj-walk pos2-7 pos3-7)
    (adj-walk pos3-7 pos2-7)
    (adj-walk pos2-8 pos3-8)
    (adj-walk pos3-8 pos2-8)
    (adj-walk pos3-0 pos4-0)
    (adj-walk pos4-0 pos3-0)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-walk pos3-2 pos4-2)
    (adj-walk pos4-2 pos3-2)
    (adj-walk pos3-3 pos3-4)
    (adj-walk pos3-4 pos3-3)
    (adj-walk pos3-3 pos4-3)
    (adj-walk pos4-3 pos3-3)
    (adj-walk pos3-4 pos3-5)
    (adj-walk pos3-5 pos3-4)
    (adj-walk pos3-4 pos4-4)
    (adj-walk pos4-4 pos3-4)
    (adj-walk pos3-5 pos3-6)
    (adj-walk pos3-6 pos3-5)
    (adj-walk pos3-5 pos4-5)
    (adj-walk pos4-5 pos3-5)
    (adj-walk pos3-6 pos3-7)
    (adj-walk pos3-7 pos3-6)
    (adj-walk pos3-6 pos4-6)
    (adj-walk pos4-6 pos3-6)
    (adj-walk pos3-7 pos3-8)
    (adj-walk pos3-8 pos3-7)
    (adj-walk pos3-7 pos4-7)
    (adj-walk pos4-7 pos3-7)
    (adj-walk pos4-0 pos4-1)
    (adj-walk pos4-1 pos4-0)
    (adj-walk pos4-0 pos5-0)
    (adj-walk pos5-0 pos4-0)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-2 pos4-3)
    (adj-walk pos4-3 pos4-2)
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
    (adj-walk pos4-6 pos5-6)
    (adj-walk pos5-6 pos4-6)
    (adj-walk pos4-7 pos5-7)
    (adj-walk pos5-7 pos4-7)
    (adj-walk pos5-0 pos6-0)
    (adj-walk pos6-0 pos5-0)
    (adj-walk pos5-3 pos6-3)
    (adj-walk pos6-3 pos5-3)
    (adj-walk pos5-6 pos5-7)
    (adj-walk pos5-7 pos5-6)
    (adj-walk pos5-6 pos6-6)
    (adj-walk pos6-6 pos5-6)
    (adj-walk pos5-7 pos5-8)
    (adj-walk pos5-8 pos5-7)
    (adj-walk pos5-7 pos6-7)
    (adj-walk pos6-7 pos5-7)
    (adj-walk pos5-8 pos6-8)
    (adj-walk pos6-8 pos5-8)
    (adj-walk pos6-0 pos6-1)
    (adj-walk pos6-1 pos6-0)
    (adj-walk pos6-0 pos7-0)
    (adj-walk pos7-0 pos6-0)
    (adj-walk pos6-1 pos6-2)
    (adj-walk pos6-2 pos6-1)
    (adj-walk pos6-2 pos6-3)
    (adj-walk pos6-3 pos6-2)
    (adj-walk pos6-2 pos7-2)
    (adj-walk pos7-2 pos6-2)
    (adj-walk pos6-3 pos6-4)
    (adj-walk pos6-4 pos6-3)
    (adj-walk pos6-3 pos7-3)
    (adj-walk pos7-3 pos6-3)
    (adj-walk pos6-4 pos7-4)
    (adj-walk pos7-4 pos6-4)
    (adj-walk pos6-6 pos6-7)
    (adj-walk pos6-7 pos6-6)
    (adj-walk pos6-6 pos7-6)
    (adj-walk pos7-6 pos6-6)
    (adj-walk pos6-7 pos6-8)
    (adj-walk pos6-8 pos6-7)
    (adj-walk pos6-7 pos7-7)
    (adj-walk pos7-7 pos6-7)
    (adj-walk pos6-8 pos7-8)
    (adj-walk pos7-8 pos6-8)
    (adj-walk pos7-2 pos7-3)
    (adj-walk pos7-3 pos7-2)
    (adj-walk pos7-3 pos7-4)
    (adj-walk pos7-4 pos7-3)
    (adj-walk pos7-4 pos7-5)
    (adj-walk pos7-5 pos7-4)
    (adj-walk pos7-5 pos7-6)
    (adj-walk pos7-6 pos7-5)
    (adj-walk pos7-6 pos7-7)
    (adj-walk pos7-7 pos7-6)
    (adj-walk pos7-7 pos7-8)
    (adj-walk pos7-8 pos7-7)
)

(:goal
  (and
    (at-prime pos2-4)
  )
)
(:metric minimize (total-cost))
)
