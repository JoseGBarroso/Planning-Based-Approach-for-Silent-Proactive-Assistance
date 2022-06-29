(define (problem teleport-assistance6_problem_129_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos1-0 pos1-3 pos1-4 pos2-2 pos2-4 pos3-1 pos3-3 pos3-4 pos4-1 pos4-2 pos4-4 pos5-1 pos5-3 pos6-1 pos6-2 pos6-3 pos6-4  - place)

  (:init
    (at-teleport pos5-3 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos1-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-4)
    (= (total-cost) 0)
  )


)