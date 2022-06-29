(define (problem teleport-assistance6_problem_64_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-4 pos0-7 pos0-8 pos1-0 pos1-2 pos1-6 pos1-7 pos1-8 pos2-4 pos2-5 pos2-8 pos3-1 pos3-5 pos3-6 pos3-8 pos4-0 pos4-1 pos4-3 pos4-4 pos4-6 pos4-7 pos4-8 pos5-0 pos5-1 pos5-2 pos5-4 pos5-5 pos5-6 pos5-8 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-7 pos6-8 pos7-1 pos7-5 pos7-6 pos7-8 pos8-0 pos8-2 pos8-3 pos8-6 pos8-7  - place)

  (:init
    (at-teleport pos6-7 disabled)
    (at-teleport pos0-7 disabled)
    (at-teleport pos8-0 disabled)
    (at-teleport pos5-8 disabled)
    (at-teleport pos0-3 disabled)
    (at-teleport pos2-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-8)
    (= (total-cost) 0)
  )


)