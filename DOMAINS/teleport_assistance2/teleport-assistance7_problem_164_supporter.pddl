(define (problem teleport-assistance7_problem_164_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos1-0 pos1-2 pos1-3 pos1-4 pos1-5 pos2-0 pos2-2 pos2-3 pos2-4 pos2-5 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos4-0 pos4-1 pos4-3 pos4-4 pos4-5  - place)

  (:init
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos1-0)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos2-0)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos4-0)
    (free pos4-1)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)

    (at-teleport pos0-3 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos2-5 disabled)
    (teleport_can_be_activated)
    (is-goal pos1-2)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)