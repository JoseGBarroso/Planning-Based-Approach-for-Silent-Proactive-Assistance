(define (problem teleport-assistance6_problem_47_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-6 pos0-7 pos0-8 pos1-0 pos1-1 pos1-2 pos1-3 pos1-5 pos1-6 pos1-8 pos2-0 pos2-1 pos2-3 pos2-5 pos2-6 pos2-7 pos3-1 pos3-3 pos3-4 pos3-5 pos3-6 pos4-2 pos4-3 pos4-4 pos4-6 pos4-8 pos5-2 pos5-3 pos5-5 pos5-6 pos5-7 pos6-1 pos6-2 pos6-6 pos6-7 pos6-8 pos7-1 pos7-2 pos7-6 pos7-8 pos8-2 pos8-3 pos8-4 pos8-5 pos8-8 pos9-0 pos9-2 pos9-3 pos9-5 pos9-6  - place)

  (:init
    (at-teleport pos6-8 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos2-7 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos4-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos7-1)
    (= (total-cost) 0)
  )


)