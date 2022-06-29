(define (problem teleport-assistance6_problem_118_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos0-4 pos0-5 pos1-0 pos1-2 pos1-4 pos1-5 pos2-0 pos2-1 pos2-2 pos2-5 pos2-6 pos3-1 pos3-2 pos3-4 pos3-5 pos3-6 pos4-3 pos4-4 pos4-6 pos5-1 pos5-2 pos5-4 pos5-5 pos5-6 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4  - place)

  (:init
    (at-teleport pos0-3 disabled)
    (at-teleport pos5-1 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos2-5 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos2-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-0)
    (= (total-cost) 0)
  )


)