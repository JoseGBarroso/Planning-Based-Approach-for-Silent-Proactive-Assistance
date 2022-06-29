(define (problem teleport-assistance6_problem_155_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-7 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos4-7 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-6 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-7 pos7-0 pos7-1 pos7-3 pos7-5 pos7-6 pos7-7 pos8-0 pos8-2 pos8-3 pos8-4 pos8-5 pos8-6 pos8-7 pos9-0 pos9-2 pos9-3 pos9-5 pos9-6 pos9-7  - place)

  (:init
    (at-teleport pos6-4 disabled)
    (at-teleport pos6-3 disabled)
    (at-teleport pos7-5 disabled)
    (at-teleport pos5-2 disabled)
    (at-teleport pos3-7 disabled)
    (at-teleport pos4-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos6-7)
    (= (total-cost) 0)
  )


)