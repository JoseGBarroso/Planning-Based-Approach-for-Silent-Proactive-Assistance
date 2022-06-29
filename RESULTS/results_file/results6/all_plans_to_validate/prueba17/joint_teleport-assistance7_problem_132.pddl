(define (problem joint_teleport-assistance7_problem_132)
(:domain joint_teleport-assistance7_domain)
(:objects
    pos0-2 pos1-2 pos1-3 pos2-2 pos3-0 pos3-1 pos3-2 pos3-3 pos4-3 pos5-0 pos5-1 pos5-2 pos5-3 pos6-1 pos6-2 pos7-1 pos7-2 pos8-0 pos8-1 pos8-2 pos8-3 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (free pos0-2)
    (free pos1-2)
    (free pos1-3)
    (free pos2-2)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos4-3)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos6-1)
    (free pos6-2)
    (free pos7-1)
    (free pos7-2)
    (free pos8-0)
    (free pos8-1)
    (free pos8-2)
    (free pos8-3)
    (at-teleport pos0-2 disabled)
    (at-teleport pos8-1 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos6-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-1)
    (at-prime pos6-2)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-walk pos1-2 pos1-3)
    (adj-walk pos1-3 pos1-2)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-walk pos3-3 pos4-3)
    (adj-walk pos4-3 pos3-3)
    (adj-walk pos4-3 pos5-3)
    (adj-walk pos5-3 pos4-3)
    (adj-walk pos5-0 pos5-1)
    (adj-walk pos5-1 pos5-0)
    (adj-walk pos5-1 pos5-2)
    (adj-walk pos5-2 pos5-1)
    (adj-walk pos5-1 pos6-1)
    (adj-walk pos6-1 pos5-1)
    (adj-walk pos5-2 pos5-3)
    (adj-walk pos5-3 pos5-2)
    (adj-walk pos5-2 pos6-2)
    (adj-walk pos6-2 pos5-2)
    (adj-walk pos6-1 pos6-2)
    (adj-walk pos6-2 pos6-1)
    (adj-walk pos6-1 pos7-1)
    (adj-walk pos7-1 pos6-1)
    (adj-walk pos6-2 pos7-2)
    (adj-walk pos7-2 pos6-2)
    (adj-walk pos7-1 pos7-2)
    (adj-walk pos7-2 pos7-1)
    (adj-walk pos7-1 pos8-1)
    (adj-walk pos8-1 pos7-1)
    (adj-walk pos7-2 pos8-2)
    (adj-walk pos8-2 pos7-2)
    (adj-walk pos8-0 pos8-1)
    (adj-walk pos8-1 pos8-0)
    (adj-walk pos8-1 pos8-2)
    (adj-walk pos8-2 pos8-1)
    (adj-walk pos8-2 pos8-3)
    (adj-walk pos8-3 pos8-2)
)

(:goal
  (and
    (at-prime pos3-1)
  )
)
(:metric minimize (total-cost))
)