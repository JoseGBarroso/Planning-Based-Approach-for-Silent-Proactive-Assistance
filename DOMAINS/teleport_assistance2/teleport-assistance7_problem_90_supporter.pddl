(define (problem teleport-assistance7_problem_90_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-4 pos1-0 pos1-1 pos2-1 pos2-3 pos2-4 pos3-0 pos3-1 pos3-4 pos4-1 pos4-2 pos4-3 pos4-4  - place)

  (:init
    (free pos0-4)
    (free pos1-0)
    (free pos1-1)
    (free pos2-1)
    (free pos2-3)
    (free pos2-4)
    (free pos3-0)
    (free pos3-1)
    (free pos3-4)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)

    (at-teleport pos0-4 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos1-0 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-4)

    (at-prime pos1-0)
    (= (total-cost) 0)
  )


)