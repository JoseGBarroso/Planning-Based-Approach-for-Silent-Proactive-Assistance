(define (problem teleport-assistance7_problem_155_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-2 pos0-4 pos0-5 pos1-0 pos1-2 pos1-3 pos2-6 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos4-0 pos4-1 pos4-3 pos4-4 pos4-6 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-6  - place)

  (:init
    (free pos0-0)
    (free pos0-2)
    (free pos0-4)
    (free pos0-5)
    (free pos1-0)
    (free pos1-2)
    (free pos1-3)
    (free pos2-6)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)
    (free pos4-0)
    (free pos4-1)
    (free pos4-3)
    (free pos4-4)
    (free pos4-6)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-4)
    (free pos5-5)
    (free pos5-6)

    (at-teleport pos3-3 disabled)
    (at-teleport pos5-1 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos3-6 disabled)
    (teleport_can_be_activated)
    (is-goal pos5-3)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)