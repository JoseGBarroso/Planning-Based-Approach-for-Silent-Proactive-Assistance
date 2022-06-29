(define (problem teleport-assistance6_problem_130_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-4 pos0-5 pos1-1 pos1-2 pos1-4 pos1-5 pos2-0 pos2-1 pos2-2 pos2-3 pos2-5 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos6-1 pos6-2 pos6-3 pos6-4 pos7-1 pos7-3 pos7-4 pos7-5  - place)

  (:init
    (at-teleport pos2-3 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos5-4 disabled)
    (at-teleport pos7-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-2)
    (= (total-cost) 0)
  )


)