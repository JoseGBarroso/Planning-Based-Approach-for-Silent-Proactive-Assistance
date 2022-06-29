(define (problem teleport-assistance7_problem_159_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-4 pos0-5 pos1-0 pos1-1 pos1-2 pos1-3 pos2-0 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos3-1 pos3-4 pos3-6  - place)

  (:init
    (free pos0-0)
    (free pos0-4)
    (free pos0-5)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-0)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos3-1)
    (free pos3-4)
    (free pos3-6)

    (at-teleport pos0-4 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos3-6 disabled)
    (at-teleport pos2-5 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-6)

    (at-prime pos1-1)
    (= (total-cost) 0)
  )


)