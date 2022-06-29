(define (problem teleport-assistance7_problem_64_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-6 pos1-4 pos1-6 pos2-5 pos3-0 pos3-3 pos3-4 pos3-5 pos4-2 pos4-3 pos4-5 pos5-1 pos5-2 pos6-0 pos6-1 pos6-3 pos7-0 pos7-4 pos8-1 pos9-1 pos9-3 pos9-4 pos9-6  - place)

  (:init
    (free pos0-0)
    (free pos0-6)
    (free pos1-4)
    (free pos1-6)
    (free pos2-5)
    (free pos3-0)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos4-2)
    (free pos4-3)
    (free pos4-5)
    (free pos5-1)
    (free pos5-2)
    (free pos6-0)
    (free pos6-1)
    (free pos6-3)
    (free pos7-0)
    (free pos7-4)
    (free pos8-1)
    (free pos9-1)
    (free pos9-3)
    (free pos9-4)
    (free pos9-6)

    (at-teleport pos9-4 disabled)
    (at-teleport pos5-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-5)

    (at-prime pos6-1)
    (= (total-cost) 0)
  )


)