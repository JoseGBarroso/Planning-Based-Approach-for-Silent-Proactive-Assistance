(define (problem teleport-assistance7_problem_60_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos1-0 pos1-1 pos2-0 pos2-3 pos3-0  - place)

  (:init
    (free pos0-2)
    (free pos1-0)
    (free pos1-1)
    (free pos2-0)
    (free pos2-3)
    (free pos3-0)

    (at-teleport pos2-0 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos0-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-1)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)