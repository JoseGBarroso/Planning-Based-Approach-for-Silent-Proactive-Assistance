(define (problem teleport-assistance6_problem_179_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos2-0 pos2-1 pos2-3 pos3-0 pos3-3 pos4-0 pos4-3 pos5-1 pos5-2 pos5-3 pos5-4 pos6-2 pos6-3 pos7-0 pos7-1 pos7-2 pos7-3 pos8-0 pos8-1 pos8-2 pos8-3 pos8-4 pos9-0 pos9-2 pos9-4  - place)

  (:init
    (at-teleport pos5-3 disabled)
    (at-teleport pos8-1 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos2-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-3)
    (= (total-cost) 0)
  )


)