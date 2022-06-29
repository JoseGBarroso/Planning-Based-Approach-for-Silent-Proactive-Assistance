(define (problem teleport-assistance7_problem_13_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos1-0 pos1-1 pos1-2 pos1-3 pos2-1 pos3-0 pos3-1 pos4-0 pos4-1 pos4-2 pos5-2 pos6-0 pos7-1 pos7-2 pos7-3  - place)

  (:init
    (free pos0-0)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-1)
    (free pos3-0)
    (free pos3-1)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos5-2)
    (free pos6-0)
    (free pos7-1)
    (free pos7-2)
    (free pos7-3)

    (at-teleport pos4-1 disabled)
    (at-teleport pos1-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-3)

    (at-prime pos4-2)
    (= (total-cost) 0)
  )


)