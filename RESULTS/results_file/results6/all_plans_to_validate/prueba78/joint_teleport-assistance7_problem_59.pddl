(define (problem joint_teleport-assistance7_problem_59)
(:domain joint_teleport-assistance7_domain)
(:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos1-1 pos1-2 pos1-4 pos2-0 pos2-3 pos3-1 pos3-4 pos4-0 pos4-3 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos1-1)
    (free pos1-2)
    (free pos1-4)
    (free pos2-0)
    (free pos2-3)
    (free pos3-1)
    (free pos3-4)
    (free pos4-0)
    (free pos4-3)
    (at-teleport pos4-0 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos0-0 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-1)
    (at-prime pos1-4)
    (adj-walk pos0-0 pos0-1)
    (adj-walk pos0-1 pos0-0)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-1 pos1-1)
    (adj-walk pos1-1 pos0-1)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-walk pos1-1 pos1-2)
    (adj-walk pos1-2 pos1-1)
)

(:goal
  (and
    (at-prime pos0-1)
  )
)
(:metric minimize (total-cost))
)
