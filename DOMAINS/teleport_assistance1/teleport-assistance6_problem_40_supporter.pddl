(define (problem teleport-assistance6_problem_40_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-5 pos1-4 pos1-5 pos2-0 pos2-1 pos2-2 pos2-4 pos3-0 pos3-3 pos3-4 pos3-5 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0  - place)

  (:init
    (at-teleport pos1-4 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos3-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-1)
    (= (total-cost) 0)
  )


)