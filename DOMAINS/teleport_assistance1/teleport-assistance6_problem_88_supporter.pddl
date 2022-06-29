(define (problem teleport-assistance6_problem_88_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-5 pos1-0 pos1-1 pos1-5 pos2-0 pos2-1 pos2-2 pos2-5 pos3-1 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos5-2 pos5-3 pos5-4 pos5-5 pos6-0 pos6-2 pos6-4 pos6-5 pos7-0 pos7-1 pos7-3 pos7-4 pos7-5 pos8-1 pos8-2 pos8-3 pos8-4 pos9-0 pos9-1 pos9-2 pos9-3 pos9-4 pos9-5  - place)

  (:init
    (at-teleport pos4-1 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos8-1 disabled)
    (at-teleport pos7-1 disabled)
    (at-teleport pos2-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-0)
    (= (total-cost) 0)
  )


)