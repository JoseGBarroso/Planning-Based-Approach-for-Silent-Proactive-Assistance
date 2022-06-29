(define (problem teleport-assistance7_problem_11_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos0-3 pos0-5 pos0-8 pos1-1 pos1-2 pos1-3 pos1-5 pos1-6 pos1-7 pos2-2 pos2-3 pos2-6 pos2-9 pos3-3 pos3-4 pos3-5 pos3-6  - place)

  (:init
    (free pos0-2)
    (free pos0-3)
    (free pos0-5)
    (free pos0-8)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-5)
    (free pos1-6)
    (free pos1-7)
    (free pos2-2)
    (free pos2-3)
    (free pos2-6)
    (free pos2-9)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)

    (at-teleport pos3-4 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos2-6 disabled)
    (at-teleport pos1-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-7)

    (at-prime pos0-3)
    (= (total-cost) 0)
  )


)