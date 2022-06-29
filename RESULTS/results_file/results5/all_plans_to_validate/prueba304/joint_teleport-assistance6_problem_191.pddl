(define (problem joint_teleport-assistance6_problem_191)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-0 pos0-1 pos0-2 pos0-4 pos0-5 pos1-2 pos1-3 pos1-4 pos1-7 pos2-0 pos2-3 pos2-6 pos2-7 pos3-2 pos3-4 pos3-5 pos4-0 pos4-2 pos4-6 pos4-7 pos5-0 pos5-3 pos5-4 pos5-6 pos5-7 pos6-0 pos6-2 pos6-3 pos6-4 pos6-5 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos7-5 pos7-7 pos8-0 pos8-1 pos8-3 pos8-4 pos8-5 pos8-6 pos8-7 pos9-0 pos9-1 pos9-2 pos9-3 pos9-4 pos9-6 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos5-6 disabled)
    (at-teleport pos7-1 disabled)
    (at-teleport pos9-3 disabled)
    (at-teleport pos8-6 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos6-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos7-7)
    (adj-walk pos0-0 pos0-1)
    (adj-walk pos0-1 pos0-0)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
    (adj-walk pos1-3 pos1-4)
    (adj-walk pos1-4 pos1-3)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-walk pos1-7 pos2-7)
    (adj-walk pos2-7 pos1-7)
    (adj-walk pos2-6 pos2-7)
    (adj-walk pos2-7 pos2-6)
    (adj-walk pos3-2 pos4-2)
    (adj-walk pos4-2 pos3-2)
    (adj-walk pos3-4 pos3-5)
    (adj-walk pos3-5 pos3-4)
    (adj-walk pos4-0 pos5-0)
    (adj-walk pos5-0 pos4-0)
    (adj-walk pos4-6 pos4-7)
    (adj-walk pos4-7 pos4-6)
    (adj-walk pos4-6 pos5-6)
    (adj-walk pos5-6 pos4-6)
    (adj-walk pos4-7 pos5-7)
    (adj-walk pos5-7 pos4-7)
    (adj-walk pos5-0 pos6-0)
    (adj-walk pos6-0 pos5-0)
    (adj-walk pos5-3 pos5-4)
    (adj-walk pos5-4 pos5-3)
    (adj-walk pos5-3 pos6-3)
    (adj-walk pos6-3 pos5-3)
    (adj-walk pos5-4 pos6-4)
    (adj-walk pos6-4 pos5-4)
    (adj-walk pos5-6 pos5-7)
    (adj-walk pos5-7 pos5-6)
    (adj-walk pos6-0 pos7-0)
    (adj-walk pos7-0 pos6-0)
    (adj-walk pos6-2 pos6-3)
    (adj-walk pos6-3 pos6-2)
    (adj-walk pos6-2 pos7-2)
    (adj-walk pos7-2 pos6-2)
    (adj-walk pos6-3 pos6-4)
    (adj-walk pos6-4 pos6-3)
    (adj-walk pos6-3 pos7-3)
    (adj-walk pos7-3 pos6-3)
    (adj-walk pos6-4 pos6-5)
    (adj-walk pos6-5 pos6-4)
    (adj-walk pos6-4 pos7-4)
    (adj-walk pos7-4 pos6-4)
    (adj-walk pos6-5 pos7-5)
    (adj-walk pos7-5 pos6-5)
    (adj-walk pos7-0 pos7-1)
    (adj-walk pos7-1 pos7-0)
    (adj-walk pos7-0 pos8-0)
    (adj-walk pos8-0 pos7-0)
    (adj-walk pos7-1 pos7-2)
    (adj-walk pos7-2 pos7-1)
    (adj-walk pos7-1 pos8-1)
    (adj-walk pos8-1 pos7-1)
    (adj-walk pos7-2 pos7-3)
    (adj-walk pos7-3 pos7-2)
    (adj-walk pos7-3 pos7-4)
    (adj-walk pos7-4 pos7-3)
    (adj-walk pos7-3 pos8-3)
    (adj-walk pos8-3 pos7-3)
    (adj-walk pos7-4 pos7-5)
    (adj-walk pos7-5 pos7-4)
    (adj-walk pos7-4 pos8-4)
    (adj-walk pos8-4 pos7-4)
    (adj-walk pos7-5 pos8-5)
    (adj-walk pos8-5 pos7-5)
    (adj-walk pos7-7 pos8-7)
    (adj-walk pos8-7 pos7-7)
    (adj-walk pos8-0 pos8-1)
    (adj-walk pos8-1 pos8-0)
    (adj-walk pos8-0 pos9-0)
    (adj-walk pos9-0 pos8-0)
    (adj-walk pos8-1 pos9-1)
    (adj-walk pos9-1 pos8-1)
    (adj-walk pos8-3 pos8-4)
    (adj-walk pos8-4 pos8-3)
    (adj-walk pos8-3 pos9-3)
    (adj-walk pos9-3 pos8-3)
    (adj-walk pos8-4 pos8-5)
    (adj-walk pos8-5 pos8-4)
    (adj-walk pos8-4 pos9-4)
    (adj-walk pos9-4 pos8-4)
    (adj-walk pos8-5 pos8-6)
    (adj-walk pos8-6 pos8-5)
    (adj-walk pos8-6 pos8-7)
    (adj-walk pos8-7 pos8-6)
    (adj-walk pos8-6 pos9-6)
    (adj-walk pos9-6 pos8-6)
    (adj-walk pos9-0 pos9-1)
    (adj-walk pos9-1 pos9-0)
    (adj-walk pos9-1 pos9-2)
    (adj-walk pos9-2 pos9-1)
    (adj-walk pos9-2 pos9-3)
    (adj-walk pos9-3 pos9-2)
    (adj-walk pos9-3 pos9-4)
    (adj-walk pos9-4 pos9-3)
)

(:goal
  (and
    (at-prime pos4-0)
  )
)
(:metric minimize (total-cost))
)
