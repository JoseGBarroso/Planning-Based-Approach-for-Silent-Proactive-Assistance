(define (problem joint_teleport-assistance6_problem_135)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos1-0 pos1-1 pos1-4 pos1-5 pos2-0 pos2-1 pos2-2 pos2-4 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos2-4 disabled)
    (at-teleport pos0-6 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos1-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos0-6)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
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
    (adj-walk pos1-0 pos1-1)
    (adj-walk pos1-1 pos1-0)
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
    (adj-walk pos1-1 pos2-1)
    (adj-walk pos2-1 pos1-1)
    (adj-walk pos1-4 pos1-5)
    (adj-walk pos1-5 pos1-4)
    (adj-walk pos1-4 pos2-4)
    (adj-walk pos2-4 pos1-4)
    (adj-walk pos2-0 pos2-1)
    (adj-walk pos2-1 pos2-0)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
    (adj-walk pos2-1 pos2-2)
    (adj-walk pos2-2 pos2-1)
    (adj-walk pos2-1 pos3-1)
    (adj-walk pos3-1 pos2-1)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-walk pos3-3 pos3-4)
    (adj-walk pos3-4 pos3-3)
    (adj-walk pos3-4 pos3-5)
    (adj-walk pos3-5 pos3-4)
)

(:goal
  (and
    (at-prime pos2-1)
  )
)
(:metric minimize (total-cost))
)