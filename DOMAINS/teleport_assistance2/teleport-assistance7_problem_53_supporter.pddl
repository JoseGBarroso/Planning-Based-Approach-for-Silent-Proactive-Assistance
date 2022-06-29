(define (problem teleport-assistance7_problem_53_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos1-0 pos1-1 pos1-2 pos1-3 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2 pos4-0 pos4-1 pos4-2  - place)

  (:init
    (free pos0-0)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-2)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)

    (at-teleport pos4-2 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos4-1 disabled)
    (at-teleport pos1-0 disabled)
    (teleport_can_be_activated)
    (is-goal pos3-0)

    (at-prime pos1-1)
    (= (total-cost) 0)
  )


)