(define (problem joint_teleport-assistance6_problem_26)
(:domain joint_teleport-assistance6_domain)
(:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-7 pos0-8 pos1-0 pos1-5 pos1-6 pos1-7 pos2-4 pos2-5 pos2-6 pos2-7 pos3-3 pos3-4 pos4-4 pos4-5 pos4-6 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (at-teleport pos3-3 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos0-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)
    (at-prime pos4-6)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-walk pos0-5 pos1-5)
    (adj-walk pos1-5 pos0-5)
    (adj-walk pos0-7 pos0-8)
    (adj-walk pos0-8 pos0-7)
    (adj-walk pos0-7 pos1-7)
    (adj-walk pos1-7 pos0-7)
    (adj-walk pos1-5 pos1-6)
    (adj-walk pos1-6 pos1-5)
    (adj-walk pos1-5 pos2-5)
    (adj-walk pos2-5 pos1-5)
    (adj-walk pos1-6 pos1-7)
    (adj-walk pos1-7 pos1-6)
    (adj-walk pos1-6 pos2-6)
    (adj-walk pos2-6 pos1-6)
    (adj-walk pos1-7 pos2-7)
    (adj-walk pos2-7 pos1-7)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos2-5 pos2-6)
    (adj-walk pos2-6 pos2-5)
    (adj-walk pos2-6 pos2-7)
    (adj-walk pos2-7 pos2-6)
    (adj-walk pos3-3 pos3-4)
    (adj-walk pos3-4 pos3-3)
    (adj-walk pos3-4 pos4-4)
    (adj-walk pos4-4 pos3-4)
    (adj-walk pos4-4 pos4-5)
    (adj-walk pos4-5 pos4-4)
    (adj-walk pos4-5 pos4-6)
    (adj-walk pos4-6 pos4-5)
)

(:goal
  (and
    (at-prime pos0-3)
  )
)
(:metric minimize (total-cost))
)
