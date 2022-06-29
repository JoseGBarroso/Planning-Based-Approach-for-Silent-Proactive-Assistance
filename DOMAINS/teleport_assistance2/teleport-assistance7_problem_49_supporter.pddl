(define (problem teleport-assistance7_problem_49_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos1-0 pos1-1 pos1-3 pos2-0 pos2-3 pos3-0 pos3-1 pos3-2 pos3-3  - place)

  (:init
    (free pos0-2)
    (free pos1-0)
    (free pos1-1)
    (free pos1-3)
    (free pos2-0)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)

    (at-teleport pos3-0 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos3-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-2)

    (at-prime pos1-3)
    (= (total-cost) 0)
  )


)