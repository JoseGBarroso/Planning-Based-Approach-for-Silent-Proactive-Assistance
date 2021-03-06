(define (problem teleport-assistance7_problem_22_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos1-3 pos1-4 pos1-6 pos2-0 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos3-3 pos3-4 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-2 pos5-3 pos5-5 pos5-6 pos6-3 pos6-4 pos6-5  - place)

  (:init
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos0-6)
    (free pos1-3)
    (free pos1-4)
    (free pos1-6)
    (free pos2-0)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos3-3)
    (free pos3-4)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-5)
    (free pos5-6)
    (free pos6-3)
    (free pos6-4)
    (free pos6-5)

    (at-teleport pos1-6 disabled)
    (at-teleport pos6-5 disabled)
    (at-teleport pos5-2 disabled)
    (at-teleport pos0-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-2)

    (at-prime pos0-4)
    (= (total-cost) 0)
  )


)