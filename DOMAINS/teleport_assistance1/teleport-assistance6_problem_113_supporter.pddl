(define (problem teleport-assistance6_problem_113_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos1-1 pos1-3 pos1-6 pos2-2 pos2-4 pos2-5 pos3-3 pos3-9 pos4-0 pos4-1 pos4-5 pos4-7 pos4-9 pos5-0 pos5-2 pos5-6 pos5-8 pos6-1 pos6-4 pos6-6 pos6-7 pos6-8 pos6-9 pos7-4 pos7-5 pos7-6 pos7-8 pos7-9 pos8-1 pos8-2 pos8-3 pos8-4 pos8-8 pos8-9 pos9-0 pos9-1 pos9-2 pos9-4 pos9-5  - place)

  (:init
    (at-teleport pos1-3 disabled)
    (at-teleport pos3-9 disabled)
    (at-teleport pos6-1 disabled)
    (at-teleport pos9-4 disabled)
    (at-teleport pos6-6 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos6-9)
    (= (total-cost) 0)
  )


)