(define (problem joint_teleport-assistance6_problem_141)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-1 pos0-4 pos1-1 pos1-2 pos1-3 pos1-5 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2 pos3-4 pos3-5 pos4-4 pos5-3 pos5-4 pos6-0 pos6-5 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos7-5 pos8-0 pos8-3 pos8-5 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos3-0 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos7-4 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos7-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos8-0)
    (adj-walk pos0-1 pos1-1)
    (adj-walk pos1-1 pos0-1)
    (adj-walk pos1-1 pos1-2)
    (adj-walk pos1-2 pos1-1)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-walk pos3-4 pos3-5)
    (adj-walk pos3-5 pos3-4)
    (adj-walk pos3-4 pos4-4)
    (adj-walk pos4-4 pos3-4)
    (adj-walk pos4-4 pos5-4)
    (adj-walk pos5-4 pos4-4)
    (adj-walk pos5-3 pos5-4)
    (adj-walk pos5-4 pos5-3)
    (adj-walk pos6-0 pos7-0)
    (adj-walk pos7-0 pos6-0)
    (adj-walk pos6-5 pos7-5)
    (adj-walk pos7-5 pos6-5)
    (adj-walk pos7-0 pos7-1)
    (adj-walk pos7-1 pos7-0)
    (adj-walk pos7-0 pos8-0)
    (adj-walk pos8-0 pos7-0)
    (adj-walk pos7-1 pos7-2)
    (adj-walk pos7-2 pos7-1)
    (adj-walk pos7-2 pos7-3)
    (adj-walk pos7-3 pos7-2)
    (adj-walk pos7-3 pos7-4)
    (adj-walk pos7-4 pos7-3)
    (adj-walk pos7-3 pos8-3)
    (adj-walk pos8-3 pos7-3)
    (adj-walk pos7-4 pos7-5)
    (adj-walk pos7-5 pos7-4)
    (adj-walk pos7-5 pos8-5)
    (adj-walk pos8-5 pos7-5)
)

(:goal
  (and
    (at-prime pos7-4)
  )
)
(:metric minimize (total-cost))
)