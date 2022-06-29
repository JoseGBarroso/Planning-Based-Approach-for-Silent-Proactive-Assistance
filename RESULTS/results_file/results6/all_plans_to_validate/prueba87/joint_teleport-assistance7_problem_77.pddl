(define (problem joint_teleport-assistance7_problem_77)
(:domain joint_teleport-assistance7_domain)
(:objects
    pos0-1 pos0-2 pos0-4 pos0-5 pos1-0 pos1-1 pos1-2 pos1-3 pos1-5 pos2-0 pos2-2 pos2-3 pos2-4 pos2-5 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos4-2 pos4-3 pos4-4 pos4-5 pos5-2 pos5-3 pos5-5 pos6-0 pos6-1 pos6-4 pos6-5 pos7-3 pos7-4 pos8-2 pos8-3 pos8-4 pos8-5 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (free pos0-1)
    (free pos0-2)
    (free pos0-4)
    (free pos0-5)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-5)
    (free pos2-0)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)
    (free pos5-2)
    (free pos5-3)
    (free pos5-5)
    (free pos6-0)
    (free pos6-1)
    (free pos6-4)
    (free pos6-5)
    (free pos7-3)
    (free pos7-4)
    (free pos8-2)
    (free pos8-3)
    (free pos8-4)
    (free pos8-5)
    (at-teleport pos6-1 disabled)
    (at-teleport pos7-3 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos0-4 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-5)
    (at-prime pos0-4)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-1 pos1-1)
    (adj-walk pos1-1 pos0-1)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-walk pos0-5 pos1-5)
    (adj-walk pos1-5 pos0-5)
    (adj-walk pos1-0 pos1-1)
    (adj-walk pos1-1 pos1-0)
    (adj-walk pos1-0 pos2-0)
    (adj-walk pos2-0 pos1-0)
    (adj-walk pos1-1 pos1-2)
    (adj-walk pos1-2 pos1-1)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-walk pos1-5 pos2-5)
    (adj-walk pos2-5 pos1-5)
    (adj-walk pos2-2 pos2-3)
    (adj-walk pos2-3 pos2-2)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos2-3 pos2-4)
    (adj-walk pos2-4 pos2-3)
    (adj-walk pos2-3 pos3-3)
    (adj-walk pos3-3 pos2-3)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-walk pos2-5 pos3-5)
    (adj-walk pos3-5 pos2-5)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-walk pos3-2 pos4-2)
    (adj-walk pos4-2 pos3-2)
    (adj-walk pos3-3 pos3-4)
    (adj-walk pos3-4 pos3-3)
    (adj-walk pos3-3 pos4-3)
    (adj-walk pos4-3 pos3-3)
    (adj-walk pos3-4 pos3-5)
    (adj-walk pos3-5 pos3-4)
    (adj-walk pos3-4 pos4-4)
    (adj-walk pos4-4 pos3-4)
    (adj-walk pos3-5 pos4-5)
    (adj-walk pos4-5 pos3-5)
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
    (adj-walk pos4-5 pos5-5)
    (adj-walk pos5-5 pos4-5)
    (adj-walk pos5-2 pos5-3)
    (adj-walk pos5-3 pos5-2)
    (adj-walk pos5-5 pos6-5)
    (adj-walk pos6-5 pos5-5)
    (adj-walk pos6-0 pos6-1)
    (adj-walk pos6-1 pos6-0)
    (adj-walk pos6-4 pos6-5)
    (adj-walk pos6-5 pos6-4)
    (adj-walk pos6-4 pos7-4)
    (adj-walk pos7-4 pos6-4)
    (adj-walk pos7-3 pos7-4)
    (adj-walk pos7-4 pos7-3)
    (adj-walk pos7-3 pos8-3)
    (adj-walk pos8-3 pos7-3)
    (adj-walk pos7-4 pos8-4)
    (adj-walk pos8-4 pos7-4)
    (adj-walk pos8-2 pos8-3)
    (adj-walk pos8-3 pos8-2)
    (adj-walk pos8-3 pos8-4)
    (adj-walk pos8-4 pos8-3)
    (adj-walk pos8-4 pos8-5)
    (adj-walk pos8-5 pos8-4)
)

(:goal
  (and
    (at-prime pos4-5)
  )
)
(:metric minimize (total-cost))
)
