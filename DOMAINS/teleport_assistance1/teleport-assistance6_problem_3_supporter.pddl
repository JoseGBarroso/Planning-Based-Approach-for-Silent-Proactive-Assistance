(define (problem teleport-assistance6_problem_3_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-3 pos0-4 pos1-0 pos1-1 pos1-3 pos2-2 pos2-3 pos2-4 pos3-0 pos3-2 pos3-3 pos3-4 pos4-0 pos4-1 pos4-2 pos4-4 pos5-0 pos5-1 pos5-2 pos5-3 pos6-0 pos6-1 pos6-2 pos6-4 pos7-0 pos7-1 pos7-2 pos7-4 pos8-0 pos8-2 pos8-3 pos8-4  - place)

  (:init
    (at-teleport pos0-1 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos7-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-3)
    (= (total-cost) 0)
  )


)