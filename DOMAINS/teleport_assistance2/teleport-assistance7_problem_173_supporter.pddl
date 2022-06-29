(define (problem teleport-assistance7_problem_173_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-4 pos1-0 pos1-1 pos1-2 pos2-2 pos2-4 pos3-2 pos3-3 pos3-4 pos4-0 pos4-1 pos4-3 pos4-4 pos5-1 pos5-2 pos5-3 pos5-4 pos6-0 pos6-1 pos6-2 pos6-4 pos7-1 pos7-2 pos8-2 pos8-3 pos9-1 pos9-2 pos9-3  - place)

  (:init
    (free pos0-4)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos2-2)
    (free pos2-4)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos4-0)
    (free pos4-1)
    (free pos4-3)
    (free pos4-4)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-4)
    (free pos6-0)
    (free pos6-1)
    (free pos6-2)
    (free pos6-4)
    (free pos7-1)
    (free pos7-2)
    (free pos8-2)
    (free pos8-3)
    (free pos9-1)
    (free pos9-2)
    (free pos9-3)

    (at-teleport pos3-2 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos5-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos9-2)

    (at-prime pos6-4)
    (= (total-cost) 0)
  )


)