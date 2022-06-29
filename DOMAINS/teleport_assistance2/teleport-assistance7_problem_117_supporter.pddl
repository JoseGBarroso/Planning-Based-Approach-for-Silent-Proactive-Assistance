(define (problem teleport-assistance7_problem_117_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos1-2 pos2-1 pos2-3 pos4-3 pos5-0 pos5-1 pos6-1 pos6-3 pos7-3 pos8-1 pos8-3 pos9-0 pos9-1 pos9-2 pos9-3  - place)

  (:init
    (free pos1-2)
    (free pos2-1)
    (free pos2-3)
    (free pos4-3)
    (free pos5-0)
    (free pos5-1)
    (free pos6-1)
    (free pos6-3)
    (free pos7-3)
    (free pos8-1)
    (free pos8-3)
    (free pos9-0)
    (free pos9-1)
    (free pos9-2)
    (free pos9-3)

    (at-teleport pos9-3 disabled)
    (at-teleport pos5-1 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos6-3)

    (at-prime pos9-3)
    (= (total-cost) 0)
  )


)