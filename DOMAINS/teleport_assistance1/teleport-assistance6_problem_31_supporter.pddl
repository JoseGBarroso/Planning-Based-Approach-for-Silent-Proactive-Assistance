(define (problem teleport-assistance6_problem_31_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-5 pos1-0 pos1-2 pos1-5 pos2-0 pos2-1 pos2-6 pos3-0 pos3-1 pos3-3 pos3-5 pos4-1 pos4-3 pos4-5 pos5-1 pos5-2 pos5-3 pos5-6 pos6-0 pos6-1 pos6-3 pos6-5 pos6-6 pos7-0 pos7-2 pos7-3 pos7-6 pos8-3  - place)

  (:init
    (at-teleport pos4-5 disabled)
    (at-teleport pos5-2 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos8-3 disabled)
    (at-teleport pos6-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos7-0)
    (= (total-cost) 0)
  )


)