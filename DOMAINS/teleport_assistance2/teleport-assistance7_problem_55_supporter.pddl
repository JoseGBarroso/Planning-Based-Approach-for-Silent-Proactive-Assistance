(define (problem teleport-assistance7_problem_55_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-2 pos5-3  - place)

  (:init
    (free pos0-0)
    (free pos0-2)
    (free pos0-3)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-3)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos5-0)
    (free pos5-2)
    (free pos5-3)

    (at-teleport pos2-2 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-3)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)