(define (problem teleport-assistance6_problem_9_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos1-2 pos1-3 pos1-4 pos2-1 pos2-3 pos3-0 pos3-2 pos3-3 pos3-4 pos4-1 pos4-2 pos4-4 pos5-1 pos6-1 pos6-2  - place)

  (:init
    (at-teleport pos3-4 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos5-1 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos4-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos6-2)
    (= (total-cost) 0)
  )


)