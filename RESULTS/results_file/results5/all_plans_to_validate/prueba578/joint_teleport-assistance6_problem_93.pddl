(define (problem joint_teleport-assistance6_problem_93)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-1 pos0-2 pos0-3 pos0-6 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos1-9 pos2-0 pos2-1 pos2-2 pos2-3 pos2-5 pos2-7 pos3-0 pos3-5 pos3-6 pos3-8 pos4-8 pos4-9 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos1-1 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos3-8 disabled)
    (at-teleport pos4-8 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos3-6)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-1 pos1-1)
    (adj-walk pos1-1 pos0-1)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos0-3 pos1-3)
    (adj-walk pos1-3 pos0-3)
    (adj-walk pos0-6 pos1-6)
    (adj-walk pos1-6 pos0-6)
    (adj-walk pos1-1 pos1-2)
    (adj-walk pos1-2 pos1-1)
    (adj-walk pos1-1 pos2-1)
    (adj-walk pos2-1 pos1-1)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-walk pos1-3 pos1-4)
    (adj-walk pos1-4 pos1-3)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-walk pos1-4 pos1-5)
    (adj-walk pos1-5 pos1-4)
    (adj-walk pos1-5 pos1-6)
    (adj-walk pos1-6 pos1-5)
    (adj-walk pos1-5 pos2-5)
    (adj-walk pos2-5 pos1-5)
    (adj-walk pos1-6 pos1-7)
    (adj-walk pos1-7 pos1-6)
    (adj-walk pos1-7 pos1-8)
    (adj-walk pos1-8 pos1-7)
    (adj-walk pos1-7 pos2-7)
    (adj-walk pos2-7 pos1-7)
    (adj-walk pos1-8 pos1-9)
    (adj-walk pos1-9 pos1-8)
    (adj-walk pos2-0 pos2-1)
    (adj-walk pos2-1 pos2-0)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
    (adj-walk pos2-1 pos2-2)
    (adj-walk pos2-2 pos2-1)
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-5 pos3-5)
    (adj-walk pos3-5 pos2-5)
    (adj-walk pos3-5 pos3-6)
    (adj-walk pos3-6 pos3-5)
    (adj-walk pos3-8 pos4-8)
    (adj-walk pos4-8 pos3-8)
    (adj-walk pos4-8 pos4-9)
    (adj-walk pos4-9 pos4-8)
)

(:goal
  (and
    (at-prime pos2-1)
  )
)
(:metric minimize (total-cost))
)
