(define (problem teleport-assistance7_problem_89_supporter)
  (:domain teleport-assistance7_supporter)
  (:objects
    pos2-4 pos4-2 pos4-6 pos5-1 pos5-3 pos6-1 pos6-5 pos6-6 pos6-7 pos7-7 pos7-8 pos7-9  - place)

  (:init
    (free pos2-4)
    (free pos4-2)
    (free pos4-6)
    (free pos5-1)
    (free pos5-3)
    (free pos6-1)
    (free pos6-5)
    (free pos6-6)
    (free pos6-7)
    (free pos7-7)
    (free pos7-8)
    (free pos7-9)

    (at-teleport pos2-4 disabled)
    (at-teleport pos6-6 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos6-1 disabled)
    (teleport_can_be_activated)
    (is-goal pos7-7)

    (at-prime pos6-5)
    (= (total-cost) 0)
  )


)