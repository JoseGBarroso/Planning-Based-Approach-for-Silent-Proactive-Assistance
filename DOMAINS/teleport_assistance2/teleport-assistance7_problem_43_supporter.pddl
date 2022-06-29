(define (problem teleport-assistance7_problem_43_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos1-0 pos1-1 pos1-2 pos1-5 pos1-6 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos3-1 pos3-2 pos3-3 pos3-6 pos3-7 pos3-8  - place)

  (:init
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-5)
    (free pos1-6)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-6)
    (free pos3-7)
    (free pos3-8)

    (at-teleport pos3-2 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos3-7 disabled)
    (at-teleport pos3-8 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-1)

    (at-prime pos1-6)
    (= (total-cost) 0)
  )


)