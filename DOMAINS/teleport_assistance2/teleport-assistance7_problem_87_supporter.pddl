(define (problem teleport-assistance7_problem_87_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos0-3 pos1-0 pos2-0 pos2-1 pos2-2 pos3-1 pos3-2 pos4-1 pos4-2 pos4-3  - place)

  (:init
    (free pos0-1)
    (free pos0-3)
    (free pos1-0)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos3-1)
    (free pos3-2)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)

    (at-teleport pos0-3 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos3-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-0)

    (at-prime pos4-1)
    (= (total-cost) 0)
  )


)