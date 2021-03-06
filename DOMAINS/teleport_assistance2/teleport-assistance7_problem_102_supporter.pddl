(define (problem teleport-assistance7_problem_102_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos1-1 pos1-2 pos1-3 pos1-5 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos3-1 pos3-2 pos3-3 pos3-4 pos4-0 pos4-1 pos4-2 pos4-4 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos6-0 pos6-1 pos6-3 pos6-4 pos6-5  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-5)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-4)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-4)
    (free pos5-5)
    (free pos6-0)
    (free pos6-1)
    (free pos6-3)
    (free pos6-4)
    (free pos6-5)

    (at-teleport pos2-1 disabled)
    (at-teleport pos3-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-3)

    (at-prime pos6-1)
    (= (total-cost) 0)
  )


)