(define (problem teleport-assistance6_problem_25_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos1-1 pos2-0 pos2-2 pos2-3 pos3-0 pos3-2 pos3-3 pos4-0 pos4-2 pos4-3 pos5-0 pos5-2 pos6-1 pos6-2 pos6-3  - place)

  (:init
    (at-teleport pos2-2 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos5-2 disabled)
    (at-teleport pos6-2 disabled)
    (at-teleport pos6-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos6-1)
    (= (total-cost) 0)
  )


)