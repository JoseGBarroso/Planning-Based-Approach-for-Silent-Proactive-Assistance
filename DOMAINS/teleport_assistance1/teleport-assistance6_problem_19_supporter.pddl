(define (problem teleport-assistance6_problem_19_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-4 pos0-7 pos0-8 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-6 pos1-8 pos2-2 pos2-4 pos2-5 pos2-7 pos3-0 pos3-1 pos3-2 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8 pos4-1 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8 pos5-0 pos5-1 pos5-2 pos5-4 pos5-5 pos5-6 pos5-7 pos5-8 pos6-0 pos6-1 pos6-5 pos6-6 pos6-7 pos7-1 pos7-2 pos7-3 pos7-8 pos8-0 pos8-2 pos8-5 pos8-6 pos8-8  - place)

  (:init
    (at-teleport pos1-8 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos3-7 disabled)
    (at-teleport pos2-5 disabled)
    (at-teleport pos5-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos7-2)
    (= (total-cost) 0)
  )


)