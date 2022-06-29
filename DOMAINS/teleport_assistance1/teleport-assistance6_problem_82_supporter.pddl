(define (problem teleport-assistance6_problem_82_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-3 pos4-3 pos5-0 pos5-2 pos5-3  - place)

  (:init
    (at-teleport pos5-3 disabled)
    (at-teleport pos0-0 disabled)
    (at-teleport pos4-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-2)
    (= (total-cost) 0)
  )


)