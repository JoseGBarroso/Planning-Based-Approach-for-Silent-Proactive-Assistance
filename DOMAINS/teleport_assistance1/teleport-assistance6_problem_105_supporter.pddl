(define (problem teleport-assistance6_problem_105_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-4 pos0-9 pos1-0 pos1-1 pos1-3 pos1-4 pos1-7 pos1-8 pos2-0 pos2-1 pos2-2 pos2-4 pos2-6 pos3-2 pos3-4 pos3-5 pos3-6 pos3-7 pos3-9 pos4-1 pos4-2 pos4-3 pos4-4 pos5-1 pos5-6  - place)

  (:init
    (at-teleport pos4-2 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos1-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-4)
    (= (total-cost) 0)
  )


)