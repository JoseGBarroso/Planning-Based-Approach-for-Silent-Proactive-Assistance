(define (problem joint_teleport-assistance7_problem_154)
(:domain joint_teleport-assistance7_domain)
(:objects
    pos0-0 pos0-1 pos0-4 pos0-5 pos0-6 pos0-8 pos1-0 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-8 pos3-0 pos3-1 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos4-6 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-7 pos5-8 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (free pos0-0)
    (free pos0-1)
    (free pos0-4)
    (free pos0-5)
    (free pos0-6)
    (free pos0-8)
    (free pos1-0)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos1-6)
    (free pos1-7)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos2-8)
    (free pos3-0)
    (free pos3-1)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)
    (free pos3-7)
    (free pos3-8)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)
    (free pos4-6)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-4)
    (free pos5-5)
    (free pos5-7)
    (free pos5-8)
    (at-teleport pos2-3 disabled)
    (at-teleport pos5-2 disabled)
    (at-teleport pos5-7 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-4)
    (at-prime pos2-3)
    (adj-walk pos0-0 pos0-1)
    (adj-walk pos0-1 pos0-0)
    (adj-walk pos0-0 pos1-0)
    (adj-walk pos1-0 pos0-0)
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
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
    (adj-walk pos1-3 pos1-4)
    (adj-walk pos1-4 pos1-3)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
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
    (adj-walk pos2-3 pos2-4)
    (adj-walk pos2-4 pos2-3)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos2-5 pos2-6)
    (adj-walk pos2-6 pos2-5)
    (adj-walk pos2-5 pos3-5)
    (adj-walk pos3-5 pos2-5)
    (adj-walk pos2-6 pos3-6)
    (adj-walk pos3-6 pos2-6)
    (adj-walk pos2-8 pos3-8)
    (adj-walk pos3-8 pos2-8)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-walk pos3-0 pos4-0)
    (adj-walk pos4-0 pos3-0)
    (adj-walk pos3-1 pos4-1)
    (adj-walk pos4-1 pos3-1)
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
    (adj-walk pos4-0 pos4-1)
    (adj-walk pos4-1 pos4-0)
    (adj-walk pos4-1 pos4-2)
    (adj-walk pos4-2 pos4-1)
    (adj-walk pos4-1 pos5-1)
    (adj-walk pos5-1 pos4-1)
    (adj-walk pos4-2 pos4-3)
    (adj-walk pos4-3 pos4-2)
    (adj-walk pos4-2 pos5-2)
    (adj-walk pos5-2 pos4-2)
    (adj-walk pos4-3 pos4-4)
    (adj-walk pos4-4 pos4-3)
    (adj-walk pos4-3 pos5-3)
    (adj-walk pos5-3 pos4-3)
    (adj-walk pos4-4 pos4-5)
    (adj-walk pos4-5 pos4-4)
    (adj-walk pos4-4 pos5-4)
    (adj-walk pos5-4 pos4-4)
    (adj-walk pos4-5 pos4-6)
    (adj-walk pos4-6 pos4-5)
    (adj-walk pos4-5 pos5-5)
    (adj-walk pos5-5 pos4-5)
    (adj-walk pos5-1 pos5-2)
    (adj-walk pos5-2 pos5-1)
    (adj-walk pos5-2 pos5-3)
    (adj-walk pos5-3 pos5-2)
    (adj-walk pos5-3 pos5-4)
    (adj-walk pos5-4 pos5-3)
    (adj-walk pos5-4 pos5-5)
    (adj-walk pos5-5 pos5-4)
    (adj-walk pos5-7 pos5-8)
    (adj-walk pos5-8 pos5-7)
)

(:goal
  (and
    (at-prime pos4-4)
  )
)
(:metric minimize (total-cost))
)
