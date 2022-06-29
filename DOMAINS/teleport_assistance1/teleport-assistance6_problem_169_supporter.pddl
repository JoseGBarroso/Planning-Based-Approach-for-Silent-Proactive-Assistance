(define (problem teleport-assistance6_problem_169_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos2-5 pos2-6 pos3-4 pos3-6 pos4-1 pos4-5 pos4-6 pos4-7 pos4-8 pos5-1 pos5-3 pos5-4 pos5-5 pos5-6 pos5-7 pos5-8 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-6  - place)

  (:init
    (at-teleport pos4-5 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos6-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-1)
    (= (total-cost) 0)
  )


)