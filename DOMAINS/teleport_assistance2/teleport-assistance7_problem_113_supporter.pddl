(define (problem teleport-assistance7_problem_113_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-3 pos1-0 pos1-1 pos1-2 pos1-4 pos2-0 pos2-1 pos2-2 pos3-0 pos3-2 pos3-3 pos4-3 pos4-4 pos5-0 pos5-1 pos5-2 pos5-3  - place)

  (:init
    (free pos0-3)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-4)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos3-0)
    (free pos3-2)
    (free pos3-3)
    (free pos4-3)
    (free pos4-4)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)

    (at-teleport pos4-3 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos0-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-1)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)