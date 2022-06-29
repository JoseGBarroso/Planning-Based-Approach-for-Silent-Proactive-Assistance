(define (problem teleport-assistance6_problem_87_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos1-0 pos1-1 pos1-2 pos2-0 pos3-0 pos3-1 pos4-0 pos4-1 pos4-3 pos5-0 pos5-2 pos5-3 pos6-1 pos6-2 pos6-3 pos7-0 pos7-2  - place)

  (:init
    (at-teleport pos5-0 disabled)
    (at-teleport pos6-1 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos5-2 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos7-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-0)
    (= (total-cost) 0)
  )


)