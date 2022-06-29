(define (problem teleport-assistance6_problem_61_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos1-0 pos1-1 pos1-2 pos2-1 pos3-1 pos3-2 pos4-0 pos4-2 pos4-3  - place)

  (:init
    (at-teleport pos2-1 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos3-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-3)
    (= (total-cost) 0)
  )


)