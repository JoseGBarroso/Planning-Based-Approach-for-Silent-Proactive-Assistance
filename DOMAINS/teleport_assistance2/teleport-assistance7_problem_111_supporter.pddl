(define (problem teleport-assistance7_problem_111_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-0 pos2-1 pos2-3 pos3-0 pos4-2 pos4-4 pos5-2  - place)

  (:init
    (free pos0-2)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos2-0)
    (free pos2-1)
    (free pos2-3)
    (free pos3-0)
    (free pos4-2)
    (free pos4-4)
    (free pos5-2)

    (at-teleport pos1-2 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos5-2 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos0-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-0)

    (at-prime pos2-3)
    (= (total-cost) 0)
  )


)