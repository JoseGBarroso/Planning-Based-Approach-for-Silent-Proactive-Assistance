(define (problem teleport-assistance7_problem_141_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos1-2 pos1-4 pos2-2 pos2-3 pos2-4 pos3-1 pos3-2 pos3-3 pos3-4 pos4-1 pos4-3 pos4-4 pos5-0 pos5-4 pos6-3 pos8-4  - place)

  (:init
    (free pos1-2)
    (free pos1-4)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos4-1)
    (free pos4-3)
    (free pos4-4)
    (free pos5-0)
    (free pos5-4)
    (free pos6-3)
    (free pos8-4)

    (at-teleport pos3-2 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos3-4 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-3)

    (at-prime pos1-4)
    (= (total-cost) 0)
  )


)