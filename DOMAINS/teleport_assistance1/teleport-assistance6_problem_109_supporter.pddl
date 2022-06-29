(define (problem teleport-assistance6_problem_109_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-4 pos0-5 pos0-7 pos1-1 pos1-2 pos1-3 pos1-5 pos1-6 pos2-0 pos2-1 pos2-2 pos2-3 pos2-5 pos2-6 pos2-7 pos3-0 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8 pos4-1 pos4-5 pos4-6 pos4-8 pos5-1 pos5-2 pos5-3 pos5-4 pos5-7 pos5-8 pos6-0 pos6-2 pos6-4 pos6-6 pos6-8 pos7-2 pos7-3 pos7-4 pos7-5 pos7-8 pos8-0 pos8-1 pos8-5 pos8-6 pos8-7 pos8-8  - place)

  (:init
    (at-teleport pos8-1 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos5-4 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos2-7 disabled)
    (at-teleport pos1-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-5)
    (= (total-cost) 0)
  )


)