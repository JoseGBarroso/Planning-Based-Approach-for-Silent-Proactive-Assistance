(define (problem teleport-assistance7_problem_96_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos1-2 pos1-5 pos2-0 pos2-2 pos2-3 pos2-4 pos2-5 pos3-2 pos3-3 pos3-5 pos4-3 pos5-0 pos5-3 pos5-4 pos6-0 pos6-1 pos6-2 pos6-3  - place)

  (:init
    (free pos1-2)
    (free pos1-5)
    (free pos2-0)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-2)
    (free pos3-3)
    (free pos3-5)
    (free pos4-3)
    (free pos5-0)
    (free pos5-3)
    (free pos5-4)
    (free pos6-0)
    (free pos6-1)
    (free pos6-2)
    (free pos6-3)

    (at-teleport pos6-3 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos5-4 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-3)

    (at-prime pos6-0)
    (= (total-cost) 0)
  )


)