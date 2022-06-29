(define (problem teleport-assistance7_problem_54_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos1-0 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos3-0  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-3)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-0)
    (free pos2-1)
    (free pos3-0)

    (at-teleport pos2-1 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos0-0 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos1-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-3)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)