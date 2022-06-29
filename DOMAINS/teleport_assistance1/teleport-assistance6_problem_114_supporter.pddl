(define (problem teleport-assistance6_problem_114_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-3 pos0-4 pos0-7 pos1-2 pos1-3 pos1-5 pos1-6 pos1-8 pos2-0 pos2-3 pos2-4 pos2-7 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos4-0 pos4-1 pos4-2 pos4-4 pos4-5 pos4-7 pos5-0 pos5-1 pos5-2 pos5-4 pos5-5 pos5-6 pos5-7 pos6-0 pos6-2 pos6-4 pos6-6 pos6-7 pos7-1 pos7-2 pos7-3 pos7-4 pos7-5 pos7-6 pos8-1 pos8-2 pos8-3 pos9-0 pos9-1 pos9-2 pos9-5 pos9-6 pos9-7 pos9-8  - place)

  (:init
    (at-teleport pos0-3 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos9-6 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos5-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-0)
    (= (total-cost) 0)
  )


)