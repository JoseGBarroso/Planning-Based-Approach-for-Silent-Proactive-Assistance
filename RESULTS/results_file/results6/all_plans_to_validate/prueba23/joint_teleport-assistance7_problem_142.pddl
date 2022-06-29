(define (problem joint_teleport-assistance7_problem_142)
(:domain joint_teleport-assistance7_domain)
(:objects
    pos0-1 pos0-2 pos1-1 pos1-2 pos1-3 pos1-4 pos2-2 pos2-4 pos2-5 pos3-2 pos3-3 pos3-5 pos4-0 pos4-3 pos4-4 pos4-5 pos5-0 pos5-3 pos5-4 pos5-5 pos6-0 pos6-2 pos6-3 pos6-4 pos6-5 pos7-0 pos7-1 pos7-3 pos7-5 pos8-1 pos8-2 pos8-3 pos8-4 pos8-5 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (free pos0-1)
    (free pos0-2)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos2-2)
    (free pos2-4)
    (free pos2-5)
    (free pos3-2)
    (free pos3-3)
    (free pos3-5)
    (free pos4-0)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)
    (free pos5-0)
    (free pos5-3)
    (free pos5-4)
    (free pos5-5)
    (free pos6-0)
    (free pos6-2)
    (free pos6-3)
    (free pos6-4)
    (free pos6-5)
    (free pos7-0)
    (free pos7-1)
    (free pos7-3)
    (free pos7-5)
    (free pos8-1)
    (free pos8-2)
    (free pos8-3)
    (free pos8-4)
    (free pos8-5)
    (at-teleport pos6-5 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos7-1 disabled)
    (at-teleport pos0-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos6-4)
    (at-prime pos7-1)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-1 pos1-1)
    (adj-walk pos1-1 pos0-1)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos1-1 pos1-2)
    (adj-walk pos1-2 pos1-1)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-walk pos1-3 pos1-4)
    (adj-walk pos1-4 pos1-3)
    (adj-walk pos1-4 pos2-4)
    (adj-walk pos2-4 pos1-4)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-5 pos3-5)
    (adj-walk pos3-5 pos2-5)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-walk pos3-3 pos4-3)
    (adj-walk pos4-3 pos3-3)
    (adj-walk pos3-5 pos4-5)
    (adj-walk pos4-5 pos3-5)
    (adj-walk pos4-0 pos5-0)
    (adj-walk pos5-0 pos4-0)
    (adj-walk pos4-3 pos4-4)
    (adj-walk pos4-4 pos4-3)
    (adj-walk pos4-3 pos5-3)
    (adj-walk pos5-3 pos4-3)
    (adj-walk pos4-4 pos4-5)
    (adj-walk pos4-5 pos4-4)
    (adj-walk pos4-4 pos5-4)
    (adj-walk pos5-4 pos4-4)
    (adj-walk pos4-5 pos5-5)
    (adj-walk pos5-5 pos4-5)
    (adj-walk pos5-0 pos6-0)
    (adj-walk pos6-0 pos5-0)
    (adj-walk pos5-3 pos5-4)
    (adj-walk pos5-4 pos5-3)
    (adj-walk pos5-3 pos6-3)
    (adj-walk pos6-3 pos5-3)
    (adj-walk pos5-4 pos5-5)
    (adj-walk pos5-5 pos5-4)
    (adj-walk pos5-4 pos6-4)
    (adj-walk pos6-4 pos5-4)
    (adj-walk pos5-5 pos6-5)
    (adj-walk pos6-5 pos5-5)
    (adj-walk pos6-0 pos7-0)
    (adj-walk pos7-0 pos6-0)
    (adj-walk pos6-2 pos6-3)
    (adj-walk pos6-3 pos6-2)
    (adj-walk pos6-3 pos6-4)
    (adj-walk pos6-4 pos6-3)
    (adj-walk pos6-3 pos7-3)
    (adj-walk pos7-3 pos6-3)
    (adj-walk pos6-4 pos6-5)
    (adj-walk pos6-5 pos6-4)
    (adj-walk pos6-5 pos7-5)
    (adj-walk pos7-5 pos6-5)
    (adj-walk pos7-0 pos7-1)
    (adj-walk pos7-1 pos7-0)
    (adj-walk pos7-1 pos8-1)
    (adj-walk pos8-1 pos7-1)
    (adj-walk pos7-3 pos8-3)
    (adj-walk pos8-3 pos7-3)
    (adj-walk pos7-5 pos8-5)
    (adj-walk pos8-5 pos7-5)
    (adj-walk pos8-1 pos8-2)
    (adj-walk pos8-2 pos8-1)
    (adj-walk pos8-2 pos8-3)
    (adj-walk pos8-3 pos8-2)
    (adj-walk pos8-3 pos8-4)
    (adj-walk pos8-4 pos8-3)
    (adj-walk pos8-4 pos8-5)
    (adj-walk pos8-5 pos8-4)
)

(:goal
  (and
    (at-prime pos6-4)
  )
)
(:metric minimize (total-cost))
)