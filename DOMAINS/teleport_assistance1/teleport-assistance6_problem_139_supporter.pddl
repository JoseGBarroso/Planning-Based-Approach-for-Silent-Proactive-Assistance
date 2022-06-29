(define (problem teleport-assistance6_problem_139_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos0-4 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos3-4 pos4-0 pos4-2 pos4-3 pos4-4 pos5-0 pos5-2 pos5-3 pos6-0 pos6-2 pos6-3  - place)

  (:init
    (at-teleport pos1-1 disabled)
    (at-teleport pos6-0 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-0)
    (= (total-cost) 0)
  )


)