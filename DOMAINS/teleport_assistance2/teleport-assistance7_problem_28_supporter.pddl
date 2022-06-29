(define (problem teleport-assistance7_problem_28_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos2-0 pos3-0 pos3-1 pos4-0 pos4-3  - place)

  (:init
    (free pos0-0)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos2-0)
    (free pos3-0)
    (free pos3-1)
    (free pos4-0)
    (free pos4-3)

    (at-teleport pos0-0 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos1-4 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-1)

    (at-prime pos1-3)
    (= (total-cost) 0)
  )


)