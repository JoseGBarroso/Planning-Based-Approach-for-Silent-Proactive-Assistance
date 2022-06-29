(define (problem teleport-assistance6_problem_142_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos1-0 pos1-1 pos1-2 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2 pos3-4 pos3-5 pos4-0 pos4-1 pos4-4 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos6-0 pos6-1 pos6-3 pos6-4 pos7-1 pos7-5 pos8-1 pos8-2 pos8-3 pos8-4  - place)

  (:init
    (at-teleport pos5-1 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos8-2 disabled)
    (at-teleport pos2-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos8-3)
    (= (total-cost) 0)
  )


)