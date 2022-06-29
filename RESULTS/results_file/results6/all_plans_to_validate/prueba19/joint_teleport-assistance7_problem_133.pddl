(define (problem joint_teleport-assistance7_problem_133)
(:domain joint_teleport-assistance7_domain)
(:objects
    pos1-2 pos2-1 pos2-2 pos3-1 pos4-1 pos4-3 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (free pos1-2)
    (free pos2-1)
    (free pos2-2)
    (free pos3-1)
    (free pos4-1)
    (free pos4-3)
    (at-teleport pos4-3 disabled)
    (at-teleport pos4-1 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos1-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-1)
    (at-prime pos4-1)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-walk pos2-1 pos2-2)
    (adj-walk pos2-2 pos2-1)
    (adj-walk pos2-1 pos3-1)
    (adj-walk pos3-1 pos2-1)
    (adj-walk pos3-1 pos4-1)
    (adj-walk pos4-1 pos3-1)
)

(:goal
  (and
    (at-prime pos2-1)
  )
)
(:metric minimize (total-cost))
)
