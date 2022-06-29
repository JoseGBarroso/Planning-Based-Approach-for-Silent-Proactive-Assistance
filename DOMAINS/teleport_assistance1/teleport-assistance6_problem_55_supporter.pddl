(define (problem teleport-assistance6_problem_55_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-3 pos0-4 pos1-2 pos1-3 pos1-4 pos2-2 pos2-3 pos2-4 pos3-3 pos4-1 pos4-3 pos5-0 pos5-1 pos5-2 pos5-3 pos6-0 pos6-1 pos6-2 pos6-4 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos8-0 pos8-1 pos8-2  - place)

  (:init
    (at-teleport pos2-3 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos0-3 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos6-4 disabled)
    (at-teleport pos6-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-4)
    (= (total-cost) 0)
  )


)