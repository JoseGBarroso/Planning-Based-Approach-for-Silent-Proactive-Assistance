(define (problem teleport-assistance6_problem_10_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-8 pos0-9 pos1-0 pos1-2 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos1-9 pos2-0 pos2-1 pos2-2 pos2-3 pos2-6 pos2-7 pos2-8 pos2-9 pos3-0 pos3-2 pos3-3 pos3-6 pos3-7 pos3-9 pos4-0 pos4-1 pos4-6 pos4-7 pos4-9 pos5-0 pos5-2 pos5-4 pos5-5 pos5-7 pos5-8 pos6-1 pos6-3 pos6-4 pos6-6 pos6-7 pos6-8 pos7-1 pos7-6 pos7-7 pos7-8 pos8-0 pos8-1 pos8-2 pos8-3 pos8-4 pos8-5 pos8-6 pos8-7 pos8-8 pos8-9  - place)

  (:init
    (at-teleport pos7-6 disabled)
    (at-teleport pos4-7 disabled)
    (at-teleport pos1-7 disabled)
    (at-teleport pos8-0 disabled)
    (at-teleport pos8-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos8-5)
    (= (total-cost) 0)
  )


)