(define (problem teleport-assistance6_problem_2_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos1-1 pos1-3 pos2-0 pos2-1 pos2-3 pos3-0 pos3-1 pos3-2 pos3-3 pos4-0 pos4-1 pos4-3  - place)

  (:init
    (at-teleport pos0-2 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos1-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-1)
    (= (total-cost) 0)
  )


)