(define (problem teleport-assistance7_problem_1_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos1-1 pos1-2 pos2-1 pos3-0 pos3-1 pos4-0  - place)

  (:init
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos1-1)
    (free pos1-2)
    (free pos2-1)
    (free pos3-0)
    (free pos3-1)
    (free pos4-0)

    (at-teleport pos3-0 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-3)

    (at-prime pos3-1)
    (= (total-cost) 0)
  )


)