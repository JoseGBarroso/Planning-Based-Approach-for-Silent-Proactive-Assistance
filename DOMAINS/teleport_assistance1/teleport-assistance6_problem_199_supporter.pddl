(define (problem teleport-assistance6_problem_199_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-4 pos2-1 pos2-3 pos2-4 pos3-0 pos3-1 pos3-2 pos3-4 pos4-0 pos4-2 pos4-3 pos4-4 pos5-0 pos5-1 pos5-3 pos5-4 pos6-3 pos6-4  - place)

  (:init
    (at-teleport pos3-4 disabled)
    (at-teleport pos6-4 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos0-0 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)