(define (problem teleport-assistance7_problem_171_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-7 pos1-7 pos2-7 pos3-2 pos3-6 pos3-7 pos4-0 pos4-1 pos4-2 pos4-4 pos4-6 pos4-7 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-6 pos5-7 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-6 pos7-0 pos7-1 pos7-2 pos7-3 pos7-7 pos8-0 pos8-1 pos8-2  - place)

  (:init
    (free pos0-7)
    (free pos1-7)
    (free pos2-7)
    (free pos3-2)
    (free pos3-6)
    (free pos3-7)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-4)
    (free pos4-6)
    (free pos4-7)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-4)
    (free pos5-5)
    (free pos5-6)
    (free pos5-7)
    (free pos6-0)
    (free pos6-1)
    (free pos6-2)
    (free pos6-3)
    (free pos6-4)
    (free pos6-5)
    (free pos6-6)
    (free pos7-0)
    (free pos7-1)
    (free pos7-2)
    (free pos7-3)
    (free pos7-7)
    (free pos8-0)
    (free pos8-1)
    (free pos8-2)

    (at-teleport pos6-6 disabled)
    (at-teleport pos3-7 disabled)
    (at-teleport pos7-7 disabled)
    (teleport_can_be_activated)
    (is-goal pos8-2)

    (at-prime pos0-7)
    (= (total-cost) 0)
  )


)