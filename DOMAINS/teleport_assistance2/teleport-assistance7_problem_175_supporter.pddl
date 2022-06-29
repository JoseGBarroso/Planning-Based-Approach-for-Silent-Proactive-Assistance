(define (problem teleport-assistance7_problem_175_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-4 pos1-0 pos1-2 pos1-3 pos2-0 pos2-2 pos2-3 pos3-3 pos3-4 pos4-1 pos5-0 pos5-1 pos5-2 pos6-1 pos6-4  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-3)
    (free pos0-4)
    (free pos1-0)
    (free pos1-2)
    (free pos1-3)
    (free pos2-0)
    (free pos2-2)
    (free pos2-3)
    (free pos3-3)
    (free pos3-4)
    (free pos4-1)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos6-1)
    (free pos6-4)

    (at-teleport pos1-3 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos0-0 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-3)

    (at-prime pos3-4)
    (= (total-cost) 0)
  )


)