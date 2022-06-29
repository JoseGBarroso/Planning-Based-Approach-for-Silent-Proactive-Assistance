(define (problem teleport-assistance6_problem_182_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-3 pos1-0 pos1-2 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2  - place)

  (:init
    (at-teleport pos0-2 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos0-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-3)
    (= (total-cost) 0)
  )


)