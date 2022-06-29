(define (problem teleport-assistance7_problem_167_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos1-0 pos1-2 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-3 pos6-0 pos6-1 pos6-3 pos7-1 pos8-0 pos8-3 pos9-0  - place)

  (:init
    (free pos1-0)
    (free pos1-2)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos5-0)
    (free pos5-1)
    (free pos5-3)
    (free pos6-0)
    (free pos6-1)
    (free pos6-3)
    (free pos7-1)
    (free pos8-0)
    (free pos8-3)
    (free pos9-0)

    (at-teleport pos1-2 disabled)
    (at-teleport pos4-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-3)

    (at-prime pos6-1)
    (= (total-cost) 0)
  )


)