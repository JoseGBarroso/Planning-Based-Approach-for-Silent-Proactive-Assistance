(define (problem joint_teleport-assistance6_problem_146)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-7 pos1-0 pos1-2 pos1-5 pos1-6 pos1-7 pos1-8 pos2-0 pos2-2 pos2-3 pos2-4 pos2-5 pos2-7 pos2-8 pos3-0 pos3-2 pos3-4 pos3-6 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos0-7 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos1-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos2-8)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-walk pos0-7 pos1-7)
    (adj-walk pos1-7 pos0-7)
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
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
    (adj-walk pos1-8 pos2-8)
    (adj-walk pos2-8 pos1-8)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos2-3 pos2-4)
    (adj-walk pos2-4 pos2-3)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos2-7 pos2-8)
    (adj-walk pos2-8 pos2-7)
)

(:goal
  (and
    (at-prime pos3-2)
  )
)
(:metric minimize (total-cost))
)
