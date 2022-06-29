(define (problem teleport-assistance7_problem_131_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos1-0 pos1-4 pos2-4 pos2-6 pos2-8 pos3-0 pos3-8 pos4-1 pos4-8 pos5-2 pos5-3 pos6-0 pos6-1 pos6-2 pos6-3 pos7-1 pos7-3 pos7-5 pos8-0 pos8-1 pos8-3 pos9-0  - place)

  (:init
    (free pos1-0)
    (free pos1-4)
    (free pos2-4)
    (free pos2-6)
    (free pos2-8)
    (free pos3-0)
    (free pos3-8)
    (free pos4-1)
    (free pos4-8)
    (free pos5-2)
    (free pos5-3)
    (free pos6-0)
    (free pos6-1)
    (free pos6-2)
    (free pos6-3)
    (free pos7-1)
    (free pos7-3)
    (free pos7-5)
    (free pos8-0)
    (free pos8-1)
    (free pos8-3)
    (free pos9-0)

    (at-teleport pos3-8 disabled)
    (at-teleport pos2-8 disabled)
    (at-teleport pos6-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos8-3)

    (at-prime pos9-0)
    (= (total-cost) 0)
  )


)