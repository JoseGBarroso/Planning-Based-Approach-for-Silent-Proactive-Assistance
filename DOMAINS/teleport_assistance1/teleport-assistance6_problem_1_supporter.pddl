(define (problem teleport-assistance6_problem_1_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-4 pos1-0 pos1-1 pos1-2 pos1-4 pos2-2 pos2-3 pos2-4 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos4-0 pos4-3 pos4-4 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4  - place)

  (:init
    (at-teleport pos2-4 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-0)
    (= (total-cost) 0)
  )


)