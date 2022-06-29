(define (problem teleport-assistance7_problem_125_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos1-4 pos2-1 pos3-1 pos4-1 pos4-2 pos4-3 pos4-4 pos5-1  - place)

  (:init
    (free pos1-4)
    (free pos2-1)
    (free pos3-1)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos5-1)

    (at-teleport pos4-1 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-3)

    (at-prime pos5-1)
    (= (total-cost) 0)
  )


)