(define (problem teleport-assistance7_problem_153_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-4 pos0-5 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-2 pos2-3 pos2-4 pos2-5 pos3-1 pos3-5  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-4)
    (free pos0-5)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-1)
    (free pos3-5)

    (at-teleport pos2-3 disabled)
    (at-teleport pos2-5 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos2-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-3)

    (at-prime pos0-0)
    (= (total-cost) 0)
  )


)