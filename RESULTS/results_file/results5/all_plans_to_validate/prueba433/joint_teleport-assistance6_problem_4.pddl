(define (problem joint_teleport-assistance6_problem_4)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-0 pos0-3 pos0-4 pos0-5 pos0-6 pos1-1 pos1-4 pos1-5 pos1-6 pos1-7 pos2-0 pos2-1 pos2-5 pos2-7 pos3-0 pos3-1 pos3-2 pos3-5 pos3-6 pos4-0 pos4-1 pos4-2 pos4-3 pos4-6 pos4-7 pos5-1 pos5-5 pos5-7 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-6 pos6-7 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos4-1 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos4-6 disabled)
    (at-teleport pos0-6 disabled)
    (at-teleport pos6-6 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos0-3)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
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
    (adj-walk pos1-4 pos1-5)
    (adj-walk pos1-5 pos1-4)
    (adj-walk pos1-5 pos1-6)
    (adj-walk pos1-6 pos1-5)
    (adj-walk pos1-5 pos2-5)
    (adj-walk pos2-5 pos1-5)
    (adj-walk pos1-6 pos1-7)
    (adj-walk pos1-7 pos1-6)
    (adj-walk pos1-7 pos2-7)
    (adj-walk pos2-7 pos1-7)
    (adj-walk pos2-0 pos2-1)
    (adj-walk pos2-1 pos2-0)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
    (adj-walk pos2-1 pos3-1)
    (adj-walk pos3-1 pos2-1)
    (adj-walk pos2-5 pos3-5)
    (adj-walk pos3-5 pos2-5)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-walk pos3-0 pos4-0)
    (adj-walk pos4-0 pos3-0)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-walk pos3-1 pos4-1)
    (adj-walk pos4-1 pos3-1)
    (adj-walk pos3-2 pos4-2)
    (adj-walk pos4-2 pos3-2)
    (adj-walk pos3-5 pos3-6)
    (adj-walk pos3-6 pos3-5)
    (adj-walk pos3-6 pos4-6)
    (adj-walk pos4-6 pos3-6)
    (adj-walk pos4-0 pos4-1)
    (adj-walk pos4-1 pos4-0)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-1 pos5-1)
    (adj-walk pos5-1 pos4-1)
    (adj-walk pos4-2 pos4-3)
    (adj-walk pos4-3 pos4-2)
    (adj-walk pos4-6 pos4-7)
    (adj-walk pos4-7 pos4-6)
    (adj-walk pos4-7 pos5-7)
    (adj-walk pos5-7 pos4-7)
    (adj-walk pos5-1 pos6-1)
    (adj-walk pos6-1 pos5-1)
    (adj-walk pos5-5 pos6-5)
    (adj-walk pos6-5 pos5-5)
    (adj-walk pos5-7 pos6-7)
    (adj-walk pos6-7 pos5-7)
    (adj-walk pos6-0 pos6-1)
    (adj-walk pos6-1 pos6-0)
    (adj-walk pos6-1 pos6-2)
    (adj-walk pos6-2 pos6-1)
    (adj-walk pos6-2 pos6-3)
    (adj-walk pos6-3 pos6-2)
    (adj-walk pos6-3 pos6-4)
    (adj-walk pos6-4 pos6-3)
    (adj-walk pos6-4 pos6-5)
    (adj-walk pos6-5 pos6-4)
    (adj-walk pos6-5 pos6-6)
    (adj-walk pos6-6 pos6-5)
    (adj-walk pos6-6 pos6-7)
    (adj-walk pos6-7 pos6-6)
)

(:goal
  (and
    (at-prime pos6-4)
  )
)
(:metric minimize (total-cost))
)
