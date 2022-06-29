(define (problem teleport-assistance7_problem_5_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-2 pos2-4 pos3-4 pos3-5 pos3-6 pos4-2 pos4-5  - place)

  (:init
    (free pos0-2)
    (free pos2-4)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)
    (free pos4-2)
    (free pos4-5)

    (at-teleport pos4-5 disabled)
    (at-teleport pos3-6 disabled)
    (at-teleport pos3-4 disabled)
    (teleport_can_be_activated)
    (is-goal pos2-4)

    (at-prime pos4-5)
    (= (total-cost) 0)
  )


)