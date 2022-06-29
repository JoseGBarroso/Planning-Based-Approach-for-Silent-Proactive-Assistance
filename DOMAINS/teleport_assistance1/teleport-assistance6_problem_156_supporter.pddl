(define (problem teleport-assistance6_problem_156_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-4 pos1-0 pos1-1 pos1-3 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos3-1 pos3-2 pos3-3 pos4-2 pos4-3 pos4-4 pos5-1 pos5-2 pos6-0 pos6-1  - place)

  (:init
    (at-teleport pos4-3 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos5-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos6-0)
    (= (total-cost) 0)
  )


)