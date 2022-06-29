(define (problem teleport-assistance7_problem_151_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos2-7 pos3-4 pos4-0 pos6-1 pos6-4 pos6-7  - place)

  (:init
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos1-4)
    (free pos1-5)
    (free pos1-6)
    (free pos1-7)
    (free pos1-8)
    (free pos2-7)
    (free pos3-4)
    (free pos4-0)
    (free pos6-1)
    (free pos6-4)
    (free pos6-7)

    (at-teleport pos0-1 disabled)
    (at-teleport pos3-4 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-5)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


)