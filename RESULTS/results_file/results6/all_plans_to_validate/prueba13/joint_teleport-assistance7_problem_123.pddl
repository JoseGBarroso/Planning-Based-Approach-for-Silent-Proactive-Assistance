(define (problem joint_teleport-assistance7_problem_123)
(:domain joint_teleport-assistance7_domain)
(:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (at-teleport pos4-4 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos4-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-3)
    (at-prime pos4-4)
    (adj-walk pos0-0 pos0-1)
    (adj-walk pos0-1 pos0-0)
    (adj-walk pos0-0 pos1-0)
    (adj-walk pos1-0 pos0-0)
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
    (adj-walk pos0-3 pos1-3)
    (adj-walk pos1-3 pos0-3)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-walk pos1-0 pos1-1)
    (adj-walk pos1-1 pos1-0)
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
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
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos2-3 pos2-4)
    (adj-walk pos2-4 pos2-3)
    (adj-walk pos2-3 pos3-3)
    (adj-walk pos3-3 pos2-3)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-walk pos3-0 pos4-0)
    (adj-walk pos4-0 pos3-0)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-walk pos3-1 pos4-1)
    (adj-walk pos4-1 pos3-1)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-walk pos3-2 pos4-2)
    (adj-walk pos4-2 pos3-2)
    (adj-walk pos3-3 pos3-4)
    (adj-walk pos3-4 pos3-3)
    (adj-walk pos3-3 pos4-3)
    (adj-walk pos4-3 pos3-3)
    (adj-walk pos3-4 pos4-4)
    (adj-walk pos4-4 pos3-4)
    (adj-walk pos4-0 pos4-1)
    (adj-walk pos4-1 pos4-0)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-2 pos4-3)
    (adj-walk pos4-3 pos4-2)
    (adj-walk pos4-3 pos4-4)
    (adj-walk pos4-4 pos4-3)
)

(:goal
  (and
    (at-prime pos1-3)
  )
)
(:metric minimize (total-cost))
)
