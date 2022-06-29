(define (problem teleport-assistance6_problem_101_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos1-1 pos2-0 pos2-1 pos3-0 pos3-2 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-3 pos6-0 pos6-2 pos6-3 pos7-0 pos7-1 pos7-2 pos7-3  - place)

  (:init
    (at-teleport pos2-0 disabled)
    (at-teleport pos7-2 disabled)
    (at-teleport pos4-1 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos7-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-2)
    (= (total-cost) 0)
  )


)