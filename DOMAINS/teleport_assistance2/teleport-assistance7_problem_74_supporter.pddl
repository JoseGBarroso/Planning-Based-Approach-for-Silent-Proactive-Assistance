(define (problem teleport-assistance7_problem_74_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-3 pos1-2 pos1-6 pos2-0 pos2-1 pos2-2 pos2-3 pos2-5 pos2-6 pos3-3 pos3-4 pos3-5 pos3-6 pos4-1 pos5-0 pos5-1  - place)

  (:init
    (free pos0-0)
    (free pos0-3)
    (free pos1-2)
    (free pos1-6)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-5)
    (free pos2-6)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)
    (free pos4-1)
    (free pos5-0)
    (free pos5-1)

    (at-teleport pos3-5 disabled)
    (at-teleport pos4-1 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos3-6 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-6)

    (at-prime pos1-2)
    (= (total-cost) 0)
  )


)