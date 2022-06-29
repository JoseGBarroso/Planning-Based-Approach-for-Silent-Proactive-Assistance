(define (problem teleport-assistance6_problem_76_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos1-2 pos2-2 pos3-2 pos3-3 pos4-0 pos4-2 pos4-3 pos5-3  - place)

  (:init
    (at-teleport pos4-2 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos3-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-3)
    (= (total-cost) 0)
  )


)