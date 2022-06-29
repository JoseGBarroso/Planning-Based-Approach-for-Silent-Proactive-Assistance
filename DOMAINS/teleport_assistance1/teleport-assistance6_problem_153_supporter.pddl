(define (problem teleport-assistance6_problem_153_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos0-4 pos0-5 pos1-2 pos1-3 pos1-4 pos1-5 pos2-1 pos2-2 pos2-3 pos2-5 pos3-3 pos3-5 pos4-2 pos4-3 pos5-0 pos5-1 pos5-2 pos5-4 pos6-0 pos6-2  - place)

  (:init
    (at-teleport pos5-1 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos4-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-0)
    (= (total-cost) 0)
  )


)