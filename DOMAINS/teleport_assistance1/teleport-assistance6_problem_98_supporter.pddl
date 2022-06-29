(define (problem teleport-assistance6_problem_98_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos2-1 pos2-2 pos2-3 pos3-0 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-2  - place)

  (:init
    (at-teleport pos3-3 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos4-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-1)
    (= (total-cost) 0)
  )


)