(define (problem teleport-assistance7_problem_104_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos0-3 pos0-4 pos0-5 pos1-2 pos1-4 pos1-5 pos2-2 pos2-3 pos2-4 pos2-5 pos3-2 pos3-3 pos3-5 pos4-0 pos4-1 pos4-2 pos4-3  - place)

  (:init
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos1-2)
    (free pos1-4)
    (free pos1-5)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-2)
    (free pos3-3)
    (free pos3-5)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)

    (at-teleport pos2-2 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos4-2 disabled)
    (teleport_can_be_activated)
    (is-goal pos0-4)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)