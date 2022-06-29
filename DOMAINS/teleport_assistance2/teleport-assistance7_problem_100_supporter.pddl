(define (problem teleport-assistance7_problem_100_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-4 pos0-7 pos1-3 pos1-5 pos1-6 pos2-4 pos2-7 pos4-1 pos4-5 pos4-6 pos4-7 pos5-0 pos5-2 pos5-3 pos5-7  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-4)
    (free pos0-7)
    (free pos1-3)
    (free pos1-5)
    (free pos1-6)
    (free pos2-4)
    (free pos2-7)
    (free pos4-1)
    (free pos4-5)
    (free pos4-6)
    (free pos4-7)
    (free pos5-0)
    (free pos5-2)
    (free pos5-3)
    (free pos5-7)

    (at-teleport pos0-0 disabled)
    (at-teleport pos4-6 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos0-7 disabled)
    (at-teleport pos5-7 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-5)

    (at-prime pos5-7)
    (= (total-cost) 0)
  )


)