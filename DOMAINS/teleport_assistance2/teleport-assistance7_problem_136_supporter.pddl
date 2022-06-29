(define (problem teleport-assistance7_problem_136_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-4 pos0-5 pos1-0 pos1-1 pos1-4 pos1-5 pos2-1 pos2-3 pos2-4 pos3-1 pos3-2 pos3-3 pos3-4 pos4-0 pos4-1 pos4-2 pos4-3  - place)

  (:init
    (free pos0-4)
    (free pos0-5)
    (free pos1-0)
    (free pos1-1)
    (free pos1-4)
    (free pos1-5)
    (free pos2-1)
    (free pos2-3)
    (free pos2-4)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)

    (at-teleport pos0-5 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos3-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-1)

    (at-prime pos1-4)
    (= (total-cost) 0)
  )


)