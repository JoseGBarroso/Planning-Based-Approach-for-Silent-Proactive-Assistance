(define (problem teleport-assistance6_problem_159_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos1-0 pos1-1 pos1-2 pos1-3 pos2-0 pos2-3 pos2-4 pos3-0 pos3-4  - place)

  (:init
    (at-teleport pos1-0 disabled)
    (at-teleport pos0-3 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos0-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)