(define (problem teleport-assistance7_problem_103_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-1 pos1-5 pos1-6 pos2-2 pos2-4 pos2-5 pos3-2 pos3-3 pos3-4 pos4-3 pos4-4 pos4-5  - place)

  (:init
    (free pos0-1)
    (free pos1-5)
    (free pos1-6)
    (free pos2-2)
    (free pos2-4)
    (free pos2-5)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)

    (at-teleport pos2-2 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos3-3 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-6)

    (at-prime pos4-5)
    (= (total-cost) 0)
  )


)