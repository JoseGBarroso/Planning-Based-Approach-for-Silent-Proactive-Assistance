(define (problem teleport-assistance7_problem_156_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-8 pos1-1 pos1-3 pos1-4 pos2-4 pos2-7 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-8)
    (free pos1-1)
    (free pos1-3)
    (free pos1-4)
    (free pos2-4)
    (free pos2-7)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)

    (at-teleport pos3-3 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos3-6 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-2)

    (at-prime pos3-2)
    (= (total-cost) 0)
  )


)