(define (problem joint_teleport-assistance6_problem_17)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-0 pos0-2 pos1-0 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2 pos3-3 pos4-1 pos4-2 pos4-3 pos5-1 pos5-2 pos5-3 pos6-0 pos6-1 pos6-2 pos6-3 pos7-0 pos8-0 pos8-1 pos8-2 pos9-0 pos9-1 pos9-2 pos9-3 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos6-2 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos8-1 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos9-3)
    (adj-walk pos0-0 pos1-0)
    (adj-walk pos1-0 pos0-0)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
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
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-walk pos2-0 pos2-1)
    (adj-walk pos2-1 pos2-0)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
    (adj-walk pos2-1 pos2-2)
    (adj-walk pos2-2 pos2-1)
    (adj-walk pos2-1 pos3-1)
    (adj-walk pos3-1 pos2-1)
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos2-3 pos3-3)
    (adj-walk pos3-3 pos2-3)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-walk pos3-1 pos4-1)
    (adj-walk pos4-1 pos3-1)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-walk pos3-2 pos4-2)
    (adj-walk pos4-2 pos3-2)
    (adj-walk pos3-3 pos4-3)
    (adj-walk pos4-3 pos3-3)
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
    (adj-walk pos5-1 pos5-2)
    (adj-walk pos5-2 pos5-1)
    (adj-walk pos5-1 pos6-1)
    (adj-walk pos6-1 pos5-1)
    (adj-walk pos5-2 pos5-3)
    (adj-walk pos5-3 pos5-2)
    (adj-walk pos5-2 pos6-2)
    (adj-walk pos6-2 pos5-2)
    (adj-walk pos5-3 pos6-3)
    (adj-walk pos6-3 pos5-3)
    (adj-walk pos6-0 pos6-1)
    (adj-walk pos6-1 pos6-0)
    (adj-walk pos6-0 pos7-0)
    (adj-walk pos7-0 pos6-0)
    (adj-walk pos6-1 pos6-2)
    (adj-walk pos6-2 pos6-1)
    (adj-walk pos6-2 pos6-3)
    (adj-walk pos6-3 pos6-2)
    (adj-walk pos7-0 pos8-0)
    (adj-walk pos8-0 pos7-0)
    (adj-walk pos8-0 pos8-1)
    (adj-walk pos8-1 pos8-0)
    (adj-walk pos8-0 pos9-0)
    (adj-walk pos9-0 pos8-0)
    (adj-walk pos8-1 pos8-2)
    (adj-walk pos8-2 pos8-1)
    (adj-walk pos8-1 pos9-1)
    (adj-walk pos9-1 pos8-1)
    (adj-walk pos8-2 pos9-2)
    (adj-walk pos9-2 pos8-2)
    (adj-walk pos9-0 pos9-1)
    (adj-walk pos9-1 pos9-0)
    (adj-walk pos9-1 pos9-2)
    (adj-walk pos9-2 pos9-1)
    (adj-walk pos9-2 pos9-3)
    (adj-walk pos9-3 pos9-2)
)

(:goal
  (and
    (at-prime pos4-3)
  )
)
(:metric minimize (total-cost))
)