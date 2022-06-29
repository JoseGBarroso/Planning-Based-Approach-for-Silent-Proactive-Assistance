(define (problem teleport-assistance6_problem_83_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos3-6 pos3-8 pos4-7 pos4-8 pos5-4 pos5-5 pos5-6 pos5-7 pos5-8 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-6 pos6-7 pos6-8 pos7-5 pos7-7 pos7-8 pos8-2 pos8-4 pos8-5 pos8-6 pos8-7 pos8-8 pos9-0 pos9-5 pos9-6 pos9-7 pos9-8  - place)

  (:init
    (at-teleport pos6-1 disabled)
    (at-teleport pos6-6 disabled)
    (at-teleport pos6-7 disabled)
    (at-teleport pos4-8 disabled)
    (at-teleport pos7-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos6-0)
    (= (total-cost) 0)
  )


)