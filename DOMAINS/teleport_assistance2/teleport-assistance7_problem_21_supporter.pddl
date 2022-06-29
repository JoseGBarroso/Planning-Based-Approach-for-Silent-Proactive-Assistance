(define (problem teleport-assistance7_problem_21_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos1-0 pos1-1 pos1-2 pos1-3 pos2-2 pos2-3 pos3-0 pos3-1 pos3-3  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-2)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-3)

    (at-teleport pos0-1 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos2-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-3)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


)