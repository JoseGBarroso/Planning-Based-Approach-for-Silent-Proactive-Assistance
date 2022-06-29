(define (problem teleport-assistance7_problem_24_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos1-0 pos1-2 pos1-4 pos1-6 pos1-7 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-9 pos3-1 pos3-3 pos3-4 pos3-6  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos1-0)
    (free pos1-2)
    (free pos1-4)
    (free pos1-6)
    (free pos1-7)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos2-9)
    (free pos3-1)
    (free pos3-3)
    (free pos3-4)
    (free pos3-6)

    (at-teleport pos0-3 disabled)
    (at-teleport pos2-5 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-6)

    (at-prime pos3-1)
    (= (total-cost) 0)
  )


)