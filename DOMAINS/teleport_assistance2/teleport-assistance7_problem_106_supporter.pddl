(define (problem teleport-assistance7_problem_106_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-9 pos1-0 pos1-2 pos1-3 pos1-4 pos1-5 pos1-8 pos1-9 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-9 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-6 pos3-7 pos3-9 pos4-0 pos4-1 pos4-2 pos4-3 pos4-5 pos4-6 pos4-8 pos4-9 pos5-0 pos5-1 pos5-2 pos5-4 pos5-5 pos5-7 pos5-9 pos6-0 pos6-1 pos6-2 pos6-5 pos6-7 pos6-8 pos7-0 pos7-3 pos7-4 pos7-5 pos7-6 pos7-7 pos7-8 pos7-9 pos8-2 pos8-9  - place)

  (:init
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos0-9)
    (free pos1-0)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos1-8)
    (free pos1-9)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos2-7)
    (free pos2-9)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos3-6)
    (free pos3-7)
    (free pos3-9)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-5)
    (free pos4-6)
    (free pos4-8)
    (free pos4-9)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos5-4)
    (free pos5-5)
    (free pos5-7)
    (free pos5-9)
    (free pos6-0)
    (free pos6-1)
    (free pos6-2)
    (free pos6-5)
    (free pos6-7)
    (free pos6-8)
    (free pos7-0)
    (free pos7-3)
    (free pos7-4)
    (free pos7-5)
    (free pos7-6)
    (free pos7-7)
    (free pos7-8)
    (free pos7-9)
    (free pos8-2)
    (free pos8-9)

    (at-teleport pos3-4 disabled)
    (at-teleport pos2-6 disabled)
    (at-teleport pos2-9 disabled)
    (at-teleport pos4-8 disabled)
    (at-teleport pos6-0 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-0)

    (at-prime pos4-5)
    (= (total-cost) 0)
  )


)