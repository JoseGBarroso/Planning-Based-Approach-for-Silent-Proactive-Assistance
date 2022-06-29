(define (problem teleport-assistance6_problem_108_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos1-0 pos1-3 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2 pos3-3 pos5-0 pos5-1 pos5-2 pos5-3  - place)

  (:init
    (at-teleport pos1-3 disabled)
    (at-teleport pos0-0 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos3-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


)