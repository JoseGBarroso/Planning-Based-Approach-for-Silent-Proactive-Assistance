(define (problem teleport-assistance7_problem_12_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos2-2 pos2-3 pos2-4 pos3-2 pos3-3 pos4-2 pos4-3 pos4-4 pos5-0 pos5-2 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-6  - place)

  (:init
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos3-2)
    (free pos3-3)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos5-0)
    (free pos5-2)
    (free pos6-0)
    (free pos6-1)
    (free pos6-2)
    (free pos6-3)
    (free pos6-4)
    (free pos6-5)
    (free pos6-6)

    (at-teleport pos5-0 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-2)

    (at-prime pos5-0)
    (= (total-cost) 0)
  )


)