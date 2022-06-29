(define (problem teleport-assistance6_problem_96_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-2 pos3-3 pos3-4 pos4-0 pos4-2 pos4-3 pos4-4 pos5-0 pos5-2 pos5-3 pos6-0 pos6-1 pos6-4  - place)

  (:init
    (at-teleport pos1-2 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos0-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-3)
    (= (total-cost) 0)
  )


)