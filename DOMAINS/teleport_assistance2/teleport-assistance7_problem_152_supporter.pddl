(define (problem teleport-assistance7_problem_152_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-3 pos0-4 pos0-5 pos0-6 pos0-8 pos1-0 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-3 pos2-4 pos2-5 pos2-8 pos3-0 pos3-3 pos3-4 pos3-5 pos3-6 pos3-8 pos4-0 pos4-1 pos4-2 pos4-3 pos4-5 pos4-7 pos4-8 pos5-0 pos5-1 pos5-2 pos5-3 pos5-5 pos5-7  - place)

  (:init
    (free pos0-1)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos0-6)
    (free pos0-8)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-0)
    (free pos2-1)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-8)
    (free pos3-0)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)
    (free pos3-8)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-5)
    (free pos4-7)
    (free pos4-8)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-5)
    (free pos5-7)

    (at-teleport pos5-1 disabled)
    (at-teleport pos0-4 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-0)

    (at-prime pos0-6)
    (= (total-cost) 0)
  )


)