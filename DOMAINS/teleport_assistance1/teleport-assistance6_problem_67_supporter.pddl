(define (problem teleport-assistance6_problem_67_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-4 pos1-0 pos1-1 pos1-3 pos1-4 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-2 pos3-4 pos4-2 pos5-1 pos5-2 pos6-1 pos6-2 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos8-1 pos8-2 pos8-3  - place)

  (:init
    (at-teleport pos5-2 disabled)
    (at-teleport pos8-3 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos0-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


)