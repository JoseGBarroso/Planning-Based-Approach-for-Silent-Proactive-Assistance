(define (problem teleport-assistance7_problem_36_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos1-1 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-3 pos4-1 pos4-2 pos5-0 pos5-1 pos5-2  - place)

  (:init
    (free pos0-0)
    (free pos0-2)
    (free pos0-3)
    (free pos1-1)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-3)
    (free pos4-1)
    (free pos4-2)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)

    (at-teleport pos0-2 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-3)

    (at-prime pos5-0)
    (= (total-cost) 0)
  )


)