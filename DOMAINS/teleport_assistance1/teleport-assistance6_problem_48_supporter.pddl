(define (problem teleport-assistance6_problem_48_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos1-2 pos1-3 pos1-6 pos2-1 pos2-3 pos2-4 pos2-6 pos3-0 pos3-1 pos3-2 pos3-3 pos3-5 pos3-6 pos4-0 pos4-3 pos4-5 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos6-1 pos6-2 pos6-4 pos6-5 pos6-6  - place)

  (:init
    (at-teleport pos0-3 disabled)
    (at-teleport pos5-5 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos5-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-1)
    (= (total-cost) 0)
  )


)