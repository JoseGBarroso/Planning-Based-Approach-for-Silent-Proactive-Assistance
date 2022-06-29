(define (problem teleport-assistance7_problem_97_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos0-3 pos0-4 pos1-0 pos1-1 pos1-3 pos1-4 pos2-1 pos2-3 pos2-4 pos3-1 pos3-2 pos4-0 pos4-2  - place)

  (:init
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos1-0)
    (free pos1-1)
    (free pos1-3)
    (free pos1-4)
    (free pos2-1)
    (free pos2-3)
    (free pos2-4)
    (free pos3-1)
    (free pos3-2)
    (free pos4-0)
    (free pos4-2)

    (at-teleport pos1-0 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-2)

    (at-prime pos1-0)
    (= (total-cost) 0)
  )


)