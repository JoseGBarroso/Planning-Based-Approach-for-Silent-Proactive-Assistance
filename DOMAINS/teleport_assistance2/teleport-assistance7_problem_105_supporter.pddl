(define (problem teleport-assistance7_problem_105_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-2 pos0-4 pos0-6 pos0-9 pos1-0 pos1-1 pos1-3 pos1-4 pos1-6 pos1-8 pos1-9 pos2-0 pos2-1 pos2-6 pos2-7 pos2-8 pos3-0 pos4-1 pos4-2 pos4-4 pos4-8 pos5-2 pos5-3 pos5-5 pos5-6 pos5-8  - place)

  (:init
    (free pos0-0)
    (free pos0-2)
    (free pos0-4)
    (free pos0-6)
    (free pos0-9)
    (free pos1-0)
    (free pos1-1)
    (free pos1-3)
    (free pos1-4)
    (free pos1-6)
    (free pos1-8)
    (free pos1-9)
    (free pos2-0)
    (free pos2-1)
    (free pos2-6)
    (free pos2-7)
    (free pos2-8)
    (free pos3-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-4)
    (free pos4-8)
    (free pos5-2)
    (free pos5-3)
    (free pos5-5)
    (free pos5-6)
    (free pos5-8)

    (at-teleport pos1-1 disabled)
    (at-teleport pos0-6 disabled)
    (at-teleport pos1-8 disabled)
    (at-teleport pos5-6 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-9)

    (at-prime pos1-6)
    (= (total-cost) 0)
  )


)