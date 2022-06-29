(define (problem teleport-assistance7_problem_69_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-3 pos1-0 pos1-1 pos2-1 pos2-3 pos3-0 pos3-1 pos3-2 pos3-3 pos4-2 pos4-3  - place)

  (:init
    (free pos0-3)
    (free pos1-0)
    (free pos1-1)
    (free pos2-1)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos4-2)
    (free pos4-3)

    (at-teleport pos3-1 disabled)
    (at-teleport pos0-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-3)

    (at-prime pos1-0)
    (= (total-cost) 0)
  )


)