(define (problem teleport-assistance6_problem_63_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos1-3 pos2-1 pos3-0 pos3-3 pos4-0 pos5-0 pos5-1 pos6-1 pos6-2 pos6-3 pos7-0 pos7-3 pos8-2 pos8-3 pos9-2 pos9-3  - place)

  (:init
    (at-teleport pos7-0 disabled)
    (at-teleport pos7-3 disabled)
    (at-teleport pos5-1 disabled)
    (at-teleport pos6-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)