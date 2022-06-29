(define (problem teleport-assistance7_problem_44_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos1-0 pos1-3 pos2-2 pos2-3 pos3-1  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-3)
    (free pos1-0)
    (free pos1-3)
    (free pos2-2)
    (free pos2-3)
    (free pos3-1)

    (at-teleport pos0-0 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-3)

    (at-prime pos2-2)
    (= (total-cost) 0)
  )


)