(define (problem teleport-assistance7_problem_37_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos0-8 pos1-2 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-7 pos3-0 pos3-2 pos3-3 pos3-4 pos3-7 pos3-8 pos4-0 pos4-2 pos4-4 pos4-5 pos4-8  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos0-6)
    (free pos0-7)
    (free pos0-8)
    (free pos1-2)
    (free pos1-4)
    (free pos1-5)
    (free pos1-6)
    (free pos1-7)
    (free pos1-8)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-7)
    (free pos3-0)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos3-7)
    (free pos3-8)
    (free pos4-0)
    (free pos4-2)
    (free pos4-4)
    (free pos4-5)
    (free pos4-8)

    (at-teleport pos1-2 disabled)
    (at-teleport pos0-6 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-7)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)