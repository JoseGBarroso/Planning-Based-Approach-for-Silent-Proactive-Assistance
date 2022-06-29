(define (problem teleport-assistance6_problem_57_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos1-3 pos2-0 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2  - place)

  (:init
    (at-teleport pos1-3 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


)