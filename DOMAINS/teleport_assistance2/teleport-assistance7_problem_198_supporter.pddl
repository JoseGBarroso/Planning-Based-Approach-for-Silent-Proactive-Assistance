(define (problem teleport-assistance7_problem_198_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos1-0 pos1-1 pos1-3 pos1-4 pos2-3 pos3-2 pos3-3 pos4-1 pos4-2  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos1-0)
    (free pos1-1)
    (free pos1-3)
    (free pos1-4)
    (free pos2-3)
    (free pos3-2)
    (free pos3-3)
    (free pos4-1)
    (free pos4-2)

    (at-teleport pos3-2 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos1-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-0)

    (at-prime pos4-2)
    (= (total-cost) 0)
  )


)