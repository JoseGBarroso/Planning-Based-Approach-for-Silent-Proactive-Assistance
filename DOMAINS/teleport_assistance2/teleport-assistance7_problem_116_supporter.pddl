(define (problem teleport-assistance7_problem_116_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos1-0 pos2-1 pos2-2 pos3-2 pos4-1 pos4-2 pos5-0 pos5-3  - place)

  (:init
    (free pos0-1)
    (free pos1-0)
    (free pos2-1)
    (free pos2-2)
    (free pos3-2)
    (free pos4-1)
    (free pos4-2)
    (free pos5-0)
    (free pos5-3)

    (at-teleport pos2-1 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos2-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos4-1)

    (at-prime pos2-2)
    (= (total-cost) 0)
  )


)