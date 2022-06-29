(define (problem teleport-assistance7_problem_94_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-4 pos0-5 pos1-1 pos1-3 pos1-4 pos1-5 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-4  - place)

  (:init
    (free pos0-4)
    (free pos0-5)
    (free pos1-1)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-4)

    (at-teleport pos0-5 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos1-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-3)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)