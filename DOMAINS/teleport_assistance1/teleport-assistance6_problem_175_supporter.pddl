(define (problem teleport-assistance6_problem_175_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos1-2 pos1-3 pos1-4 pos1-6 pos2-1 pos2-2 pos2-5 pos2-6 pos3-5 pos4-0 pos4-1 pos4-2 pos4-3 pos4-5 pos5-0 pos5-1 pos5-2 pos5-5 pos5-6 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-6 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos7-5 pos7-6 pos8-0 pos8-1 pos8-2 pos8-3 pos8-4 pos8-5 pos8-6  - place)

  (:init
    (at-teleport pos6-5 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-5)
    (= (total-cost) 0)
  )


)