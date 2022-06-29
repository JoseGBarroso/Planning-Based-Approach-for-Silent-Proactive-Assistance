(define (problem teleport-assistance6_problem_0_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-5 pos1-0 pos1-1 pos1-4 pos1-5 pos1-6 pos2-0 pos2-1 pos2-2 pos2-4 pos2-6 pos2-7 pos2-8 pos2-9 pos3-0 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-9 pos4-0 pos4-1 pos4-2 pos4-4 pos4-8 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-8 pos5-9 pos6-0 pos6-2 pos6-3 pos6-4 pos6-7 pos6-8 pos7-0 pos7-1 pos7-3 pos7-5 pos7-7 pos7-8 pos7-9 pos8-0 pos8-1 pos8-2 pos8-3 pos8-4 pos8-6 pos8-8  - place)

  (:init
    (at-teleport pos3-9 disabled)
    (at-teleport pos6-7 disabled)
    (at-teleport pos3-5 disabled)
    (at-teleport pos7-7 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos8-8 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-6)
    (= (total-cost) 0)
  )


)