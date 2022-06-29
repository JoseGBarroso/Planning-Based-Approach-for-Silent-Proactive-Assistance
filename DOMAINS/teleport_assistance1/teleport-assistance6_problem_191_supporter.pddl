(define (problem teleport-assistance6_problem_191_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-4 pos0-5 pos1-2 pos1-3 pos1-4 pos1-7 pos2-0 pos2-3 pos2-6 pos2-7 pos3-2 pos3-4 pos3-5 pos4-0 pos4-2 pos4-6 pos4-7 pos5-0 pos5-3 pos5-4 pos5-6 pos5-7 pos6-0 pos6-2 pos6-3 pos6-4 pos6-5 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos7-5 pos7-7 pos8-0 pos8-1 pos8-3 pos8-4 pos8-5 pos8-6 pos8-7 pos9-0 pos9-1 pos9-2 pos9-3 pos9-4 pos9-6  - place)

  (:init
    (at-teleport pos5-6 disabled)
    (at-teleport pos7-1 disabled)
    (at-teleport pos9-3 disabled)
    (at-teleport pos8-6 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos6-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos7-7)
    (= (total-cost) 0)
  )


)