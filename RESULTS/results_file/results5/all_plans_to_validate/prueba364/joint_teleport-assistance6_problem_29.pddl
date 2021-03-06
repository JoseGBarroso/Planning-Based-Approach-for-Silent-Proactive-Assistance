(define (problem joint_teleport-assistance6_problem_29)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-0 pos0-2 pos0-3 pos0-6 pos0-7 pos0-8 pos1-0 pos1-1 pos1-2 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos2-2 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos3-0 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8 pos4-0 pos4-3 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos2-2 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos3-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos1-1)
    (adj-walk pos0-0 pos1-0)
    (adj-walk pos1-0 pos0-0)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos0-6 pos0-7)
    (adj-walk pos0-7 pos0-6)
    (adj-walk pos0-6 pos1-6)
    (adj-walk pos1-6 pos0-6)
    (adj-walk pos0-7 pos0-8)
    (adj-walk pos0-8 pos0-7)
    (adj-walk pos0-7 pos1-7)
    (adj-walk pos1-7 pos0-7)
    (adj-walk pos0-8 pos1-8)
    (adj-walk pos1-8 pos0-8)
    (adj-walk pos1-0 pos1-1)
    (adj-walk pos1-1 pos1-0)
    (adj-walk pos1-1 pos1-2)
    (adj-walk pos1-2 pos1-1)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
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
    (adj-walk pos1-7 pos1-8)
    (adj-walk pos1-8 pos1-7)
    (adj-walk pos1-7 pos2-7)
    (adj-walk pos2-7 pos1-7)
    (adj-walk pos1-8 pos2-8)
    (adj-walk pos2-8 pos1-8)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
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
    (adj-walk pos3-8 pos4-8)
    (adj-walk pos4-8 pos3-8)
    (adj-walk pos4-3 pos4-4)
    (adj-walk pos4-4 pos4-3)
    (adj-walk pos4-4 pos4-5)
    (adj-walk pos4-5 pos4-4)
    (adj-walk pos4-5 pos4-6)
    (adj-walk pos4-6 pos4-5)
    (adj-walk pos4-6 pos4-7)
    (adj-walk pos4-7 pos4-6)
    (adj-walk pos4-7 pos4-8)
    (adj-walk pos4-8 pos4-7)
)

(:goal
  (and
    (at-prime pos4-7)
  )
)
(:metric minimize (total-cost))
)
