(define (problem teleport-assistance6_problem_12_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos1-3 pos2-1 pos3-0 pos3-1 pos3-2 pos3-3 pos4-0 pos5-0 pos5-1 pos5-2 pos5-3 pos6-0 pos6-1 pos6-2 pos6-3 pos7-0 pos7-1 pos7-2 pos7-3  - place)

  (:init
    (at-teleport pos1-3 disabled)
    (at-teleport pos6-0 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos4-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-1)
    (= (total-cost) 0)
  )


)