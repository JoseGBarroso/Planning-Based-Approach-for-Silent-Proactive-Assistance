(define (problem joint_teleport-assistance6_problem_164)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-0 pos0-2 pos0-3 pos0-4 pos1-2 pos1-3 pos2-2 pos2-4 pos3-1 pos3-2 pos3-3 pos3-4 pos4-2 pos4-3 pos4-4 pos5-0 pos5-2 pos5-3 pos5-4 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos8-0 pos8-1 pos8-3 pos8-4 pos9-0 pos9-3 pos9-4 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos3-3 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos0-0 disabled)
    (at-teleport pos8-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos0-4)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-walk pos0-3 pos1-3)
    (adj-walk pos1-3 pos0-3)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-walk pos3-2 pos4-2)
    (adj-walk pos4-2 pos3-2)
    (adj-walk pos3-3 pos3-4)
    (adj-walk pos3-4 pos3-3)
    (adj-walk pos3-3 pos4-3)
    (adj-walk pos4-3 pos3-3)
    (adj-walk pos3-4 pos4-4)
    (adj-walk pos4-4 pos3-4)
    (adj-walk pos4-2 pos4-3)
    (adj-walk pos4-3 pos4-2)
    (adj-walk pos4-2 pos5-2)
    (adj-walk pos5-2 pos4-2)
    (adj-walk pos4-3 pos4-4)
    (adj-walk pos4-4 pos4-3)
    (adj-walk pos4-3 pos5-3)
    (adj-walk pos5-3 pos4-3)
    (adj-walk pos4-4 pos5-4)
    (adj-walk pos5-4 pos4-4)
    (adj-walk pos5-0 pos6-0)
    (adj-walk pos6-0 pos5-0)
    (adj-walk pos5-2 pos5-3)
    (adj-walk pos5-3 pos5-2)
    (adj-walk pos5-2 pos6-2)
    (adj-walk pos6-2 pos5-2)
    (adj-walk pos5-3 pos5-4)
    (adj-walk pos5-4 pos5-3)
    (adj-walk pos5-3 pos6-3)
    (adj-walk pos6-3 pos5-3)
    (adj-walk pos5-4 pos6-4)
    (adj-walk pos6-4 pos5-4)
    (adj-walk pos6-0 pos6-1)
    (adj-walk pos6-1 pos6-0)
    (adj-walk pos6-0 pos7-0)
    (adj-walk pos7-0 pos6-0)
    (adj-walk pos6-1 pos6-2)
    (adj-walk pos6-2 pos6-1)
    (adj-walk pos6-1 pos7-1)
    (adj-walk pos7-1 pos6-1)
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
    (adj-walk pos7-4 pos8-4)
    (adj-walk pos8-4 pos7-4)
    (adj-walk pos8-0 pos8-1)
    (adj-walk pos8-1 pos8-0)
    (adj-walk pos8-0 pos9-0)
    (adj-walk pos9-0 pos8-0)
    (adj-walk pos8-3 pos8-4)
    (adj-walk pos8-4 pos8-3)
    (adj-walk pos8-3 pos9-3)
    (adj-walk pos9-3 pos8-3)
    (adj-walk pos8-4 pos9-4)
    (adj-walk pos9-4 pos8-4)
    (adj-walk pos9-3 pos9-4)
    (adj-walk pos9-4 pos9-3)
)

(:goal
  (and
    (at-prime pos7-3)
  )
)
(:metric minimize (total-cost))
)
