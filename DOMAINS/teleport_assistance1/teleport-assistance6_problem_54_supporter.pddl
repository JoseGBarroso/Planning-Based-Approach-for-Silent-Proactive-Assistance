(define (problem teleport-assistance6_problem_54_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos1-3 pos1-4 pos2-1 pos2-2 pos2-4 pos3-1 pos3-4 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos5-0 pos5-1 pos5-3 pos5-4 pos6-0  - place)

  (:init
    (at-teleport pos4-2 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos4-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-4)
    (= (total-cost) 0)
  )


)