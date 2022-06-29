(define (problem teleport-assistance6_problem_144_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos1-2 pos2-1 pos2-2 pos2-3 pos3-2 pos3-3 pos4-0 pos4-2 pos5-0 pos5-2 pos5-3 pos5-4 pos6-0 pos6-3 pos6-4 pos7-1 pos7-2 pos7-3 pos8-0 pos8-2 pos8-3 pos9-2  - place)

  (:init
    (at-teleport pos6-0 disabled)
    (at-teleport pos8-3 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos7-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos9-2)
    (= (total-cost) 0)
  )


)