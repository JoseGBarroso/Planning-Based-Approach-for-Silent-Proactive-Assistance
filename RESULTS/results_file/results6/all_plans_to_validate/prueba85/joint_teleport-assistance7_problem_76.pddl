(define (problem joint_teleport-assistance7_problem_76)
(:domain joint_teleport-assistance7_domain)
(:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos1-0 pos2-0 pos2-1 pos2-2 pos2-3 pos3-1 pos3-2 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos1-0)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos3-1)
    (free pos3-2)
    (at-teleport pos0-2 disabled)
    (at-teleport pos2-0 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-1)
    (at-prime pos0-2)
    (adj-walk pos0-0 pos0-1)
    (adj-walk pos0-1 pos0-0)
    (adj-walk pos0-0 pos1-0)
    (adj-walk pos1-0 pos0-0)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
    (adj-walk pos2-0 pos2-1)
    (adj-walk pos2-1 pos2-0)
    (adj-walk pos2-1 pos2-2)
    (adj-walk pos2-2 pos2-1)
    (adj-walk pos2-1 pos3-1)
    (adj-walk pos3-1 pos2-1)
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
)

(:goal
  (and
    (at-prime pos3-1)
  )
)
(:metric minimize (total-cost))
)
