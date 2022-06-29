(define (problem teleport-assistance7_problem_190_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-5 pos1-6 pos3-2 pos3-3 pos3-6 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos4-6 pos4-7 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos6-1 pos6-2 pos6-3  - place)

  (:init
    (free pos0-5)
    (free pos1-6)
    (free pos3-2)
    (free pos3-3)
    (free pos3-6)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)
    (free pos4-6)
    (free pos4-7)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-4)
    (free pos5-5)
    (free pos6-1)
    (free pos6-2)
    (free pos6-3)

    (at-teleport pos4-7 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos5-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos5-2)

    (at-prime pos4-6)
    (= (total-cost) 0)
  )


)