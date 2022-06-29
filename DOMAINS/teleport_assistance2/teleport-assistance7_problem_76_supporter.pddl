(define (problem teleport-assistance7_problem_76_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos1-0 pos2-0 pos2-1 pos2-2 pos2-3 pos3-1 pos3-2  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos1-0)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos3-1)
    (free pos3-2)

    (at-teleport pos0-2 disabled)
    (at-teleport pos2-0 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-1)

    (at-prime pos0-2)
    (= (total-cost) 0)
  )


)