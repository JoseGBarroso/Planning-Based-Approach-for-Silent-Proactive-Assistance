(define (problem joint_teleport-assistance6_problem_90)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-3 pos0-4 pos0-5 pos0-7 pos1-3 pos1-4 pos1-5 pos1-9 pos2-3 pos2-5 pos3-4 pos3-5 pos3-7 pos4-1 pos4-2 pos4-4 pos4-6 pos4-7 pos5-1 pos5-3 pos5-4 pos5-6 pos6-3 pos6-9 pos7-2 pos7-4 pos7-7 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos4-7 disabled)
    (at-teleport pos3-7 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos2-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos6-3)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-walk pos0-3 pos1-3)
    (adj-walk pos1-3 pos0-3)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-walk pos0-5 pos1-5)
    (adj-walk pos1-5 pos0-5)
    (adj-walk pos1-3 pos1-4)
    (adj-walk pos1-4 pos1-3)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-walk pos1-4 pos1-5)
    (adj-walk pos1-5 pos1-4)
    (adj-walk pos1-5 pos2-5)
    (adj-walk pos2-5 pos1-5)
    (adj-walk pos2-5 pos3-5)
    (adj-walk pos3-5 pos2-5)
    (adj-walk pos3-4 pos3-5)
    (adj-walk pos3-5 pos3-4)
    (adj-walk pos3-4 pos4-4)
    (adj-walk pos4-4 pos3-4)
    (adj-walk pos3-7 pos4-7)
    (adj-walk pos4-7 pos3-7)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-1 pos5-1)
    (adj-walk pos5-1 pos4-1)
    (adj-walk pos4-4 pos5-4)
    (adj-walk pos5-4 pos4-4)
    (adj-walk pos4-6 pos4-7)
    (adj-walk pos4-7 pos4-6)
    (adj-walk pos4-6 pos5-6)
    (adj-walk pos5-6 pos4-6)
    (adj-walk pos5-3 pos5-4)
    (adj-walk pos5-4 pos5-3)
    (adj-walk pos5-3 pos6-3)
    (adj-walk pos6-3 pos5-3)
)

(:goal
  (and
    (at-prime pos0-5)
  )
)
(:metric minimize (total-cost))
)
