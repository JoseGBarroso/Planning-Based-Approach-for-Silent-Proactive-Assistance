(define (problem teleport-assistance7_problem_172_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-8 pos1-1 pos1-3 pos1-4 pos1-5 pos1-7 pos2-0 pos2-1 pos2-2 pos2-4 pos2-5 pos2-6 pos2-7 pos3-0 pos3-1 pos3-2 pos3-4 pos3-5 pos3-8  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-8)
    (free pos1-1)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos1-7)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos2-7)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-4)
    (free pos3-5)
    (free pos3-8)

    (at-teleport pos2-2 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-7)

    (at-prime pos2-2)
    (= (total-cost) 0)
  )


)