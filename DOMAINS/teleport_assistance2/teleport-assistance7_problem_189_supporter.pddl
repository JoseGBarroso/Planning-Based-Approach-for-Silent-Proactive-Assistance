(define (problem teleport-assistance7_problem_189_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos1-0 pos1-5 pos2-1 pos2-7 pos3-1 pos3-2 pos3-6 pos3-7 pos4-2 pos4-3 pos4-4 pos4-5 pos5-3 pos5-5 pos6-4 pos6-5 pos6-6 pos6-7 pos7-2 pos7-7  - place)

  (:init
    (free pos1-0)
    (free pos1-5)
    (free pos2-1)
    (free pos2-7)
    (free pos3-1)
    (free pos3-2)
    (free pos3-6)
    (free pos3-7)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)
    (free pos5-3)
    (free pos5-5)
    (free pos6-4)
    (free pos6-5)
    (free pos6-6)
    (free pos6-7)
    (free pos7-2)
    (free pos7-7)

    (at-teleport pos4-3 disabled)
    (at-teleport pos7-7 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos6-4 disabled)
    (teleport_can_be_activated)
    (is-goal pos6-6)

    (at-prime pos2-1)
    (= (total-cost) 0)
  )


)