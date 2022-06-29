(define (problem teleport-assistance6_problem_60_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-7 pos0-8 pos0-9 pos1-3 pos1-4 pos1-6 pos1-8 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos3-1 pos3-2 pos3-3 pos3-5 pos3-8 pos4-0 pos4-1 pos4-2 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8 pos5-0 pos5-2 pos5-3 pos5-4 pos5-8 pos5-9 pos6-1 pos6-2 pos6-3 pos6-5 pos6-7 pos6-8 pos6-9  - place)

  (:init
    (at-teleport pos4-6 disabled)
    (at-teleport pos0-7 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos1-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-2)
    (= (total-cost) 0)
  )


)