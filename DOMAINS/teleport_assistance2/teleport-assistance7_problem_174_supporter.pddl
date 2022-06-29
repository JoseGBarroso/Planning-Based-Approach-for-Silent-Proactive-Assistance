(define (problem teleport-assistance7_problem_174_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-6 pos1-3 pos1-4 pos1-5 pos1-6 pos2-3 pos2-4 pos2-5 pos2-6 pos3-1 pos4-0 pos4-2 pos4-4 pos4-6  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-6)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos1-6)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos3-1)
    (free pos4-0)
    (free pos4-2)
    (free pos4-4)
    (free pos4-6)

    (at-teleport pos2-3 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos4-6 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-3)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


)