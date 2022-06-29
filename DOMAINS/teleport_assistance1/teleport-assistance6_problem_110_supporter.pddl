(define (problem teleport-assistance6_problem_110_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-4 pos0-6 pos1-0 pos1-1 pos1-2 pos1-3 pos1-5 pos2-1 pos2-2 pos2-3 pos2-4 pos2-6 pos3-0 pos3-1 pos3-3 pos3-5 pos3-6 pos4-2 pos4-4 pos4-5 pos4-6 pos5-0 pos5-1 pos5-2 pos5-4 pos5-6 pos6-0 pos6-2 pos6-3 pos6-4 pos6-5 pos6-6  - place)

  (:init
    (at-teleport pos6-2 disabled)
    (at-teleport pos6-3 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos3-6 disabled)
    (at-teleport pos1-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-6)
    (= (total-cost) 0)
  )


)