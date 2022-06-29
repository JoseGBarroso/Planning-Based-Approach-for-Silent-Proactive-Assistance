(define (problem teleport-assistance6_problem_7_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos0-9 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos1-9 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos2-9 pos3-0 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8 pos3-9 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8 pos4-9 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-7 pos5-8 pos5-9 pos6-0 pos6-1 pos6-3 pos6-4 pos6-5 pos6-6 pos6-8 pos6-9  - place)

  (:init
    (at-teleport pos2-8 disabled)
    (at-teleport pos5-5 disabled)
    (at-teleport pos3-6 disabled)
    (at-teleport pos2-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-4)
    (= (total-cost) 0)
  )


)