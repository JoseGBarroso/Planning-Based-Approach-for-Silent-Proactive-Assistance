(define (problem teleport-assistance7_problem_73_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos1-0 pos1-1 pos1-2 pos1-3 pos2-1 pos2-2 pos3-0 pos3-2  - place)

  (:init
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-1)
    (free pos2-2)
    (free pos3-0)
    (free pos3-2)

    (at-teleport pos0-3 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos1-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-1)

    (at-prime pos3-2)
    (= (total-cost) 0)
  )


)