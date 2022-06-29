(define (problem teleport-assistance7_problem_133_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos1-2 pos2-1 pos2-2 pos3-1 pos4-1 pos4-3  - place)

  (:init
    (free pos1-2)
    (free pos2-1)
    (free pos2-2)
    (free pos3-1)
    (free pos4-1)
    (free pos4-3)

    (at-teleport pos4-3 disabled)
    (at-teleport pos4-1 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos1-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-1)

    (at-prime pos4-1)
    (= (total-cost) 0)
  )


)