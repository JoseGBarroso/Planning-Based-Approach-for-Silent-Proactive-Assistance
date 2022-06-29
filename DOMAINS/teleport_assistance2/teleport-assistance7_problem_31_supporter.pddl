(define (problem teleport-assistance7_problem_31_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos0-3 pos0-4 pos0-5 pos1-2 pos1-5 pos2-0 pos2-2 pos2-4 pos2-5 pos3-1 pos3-2  - place)

  (:init
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos1-2)
    (free pos1-5)
    (free pos2-0)
    (free pos2-2)
    (free pos2-4)
    (free pos2-5)
    (free pos3-1)
    (free pos3-2)

    (at-teleport pos3-1 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos2-5 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-5)

    (at-prime pos3-1)
    (= (total-cost) 0)
  )


)