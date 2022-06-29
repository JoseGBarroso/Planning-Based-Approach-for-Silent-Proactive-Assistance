(define (problem teleport-assistance7_problem_126_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-8 pos1-1 pos1-2 pos1-3 pos1-4 pos2-0 pos2-1 pos2-2 pos2-3 pos2-7 pos3-0 pos3-9 pos4-0 pos4-1 pos4-3 pos5-0 pos5-6 pos6-0 pos6-2 pos9-8  - place)

  (:init
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos0-8)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-7)
    (free pos3-0)
    (free pos3-9)
    (free pos4-0)
    (free pos4-1)
    (free pos4-3)
    (free pos5-0)
    (free pos5-6)
    (free pos6-0)
    (free pos6-2)
    (free pos9-8)

    (at-teleport pos2-7 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-2)

    (at-prime pos6-0)
    (= (total-cost) 0)
  )


)