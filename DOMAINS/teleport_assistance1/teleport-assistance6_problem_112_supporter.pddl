(define (problem teleport-assistance6_problem_112_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-4 pos1-0 pos1-4 pos4-0 pos4-1 pos4-2 pos4-4 pos5-0 pos5-2  - place)

  (:init
    (at-teleport pos4-1 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos4-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-2)
    (= (total-cost) 0)
  )


)