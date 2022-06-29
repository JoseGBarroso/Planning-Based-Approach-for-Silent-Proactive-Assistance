(define (problem teleport-assistance6_problem_94_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-4 pos0-5 pos1-3 pos1-4 pos1-5 pos1-6 pos2-1 pos2-3 pos2-4 pos2-5 pos2-6 pos3-0 pos3-1 pos3-2 pos3-5 pos3-6 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-6 pos5-1 pos5-4 pos5-5 pos5-6 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-6 pos7-0 pos7-3 pos7-4 pos7-5 pos8-0 pos8-1 pos8-2 pos8-3 pos8-6 pos9-0 pos9-4 pos9-6  - place)

  (:init
    (at-teleport pos3-0 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos0-5 disabled)
    (at-teleport pos7-5 disabled)
    (at-teleport pos5-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos9-0)
    (= (total-cost) 0)
  )


)