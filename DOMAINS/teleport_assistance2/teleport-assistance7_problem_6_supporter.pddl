(define (problem teleport-assistance7_problem_6_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos0-4 pos1-2 pos2-0 pos2-1 pos2-3 pos3-1 pos3-2 pos3-3  - place)

  (:init
    (free pos0-2)
    (free pos0-4)
    (free pos1-2)
    (free pos2-0)
    (free pos2-1)
    (free pos2-3)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)

    (at-teleport pos3-1 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos0-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-3)

    (at-prime pos2-0)
    (= (total-cost) 0)
  )


)