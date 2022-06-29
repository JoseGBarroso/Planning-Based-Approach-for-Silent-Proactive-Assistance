(define (problem teleport-assistance7_problem_129_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-4 pos1-0 pos1-1 pos1-4 pos1-5 pos1-6 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos3-1 pos3-3 pos3-4 pos3-5 pos4-0 pos4-1 pos4-3 pos4-6  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-3)
    (free pos0-4)
    (free pos1-0)
    (free pos1-1)
    (free pos1-4)
    (free pos1-5)
    (free pos1-6)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-1)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos4-0)
    (free pos4-1)
    (free pos4-3)
    (free pos4-6)

    (at-teleport pos0-1 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos4-6 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-6)

    (at-prime pos3-1)
    (= (total-cost) 0)
  )


)