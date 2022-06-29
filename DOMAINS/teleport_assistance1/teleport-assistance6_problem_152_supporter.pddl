(define (problem teleport-assistance6_problem_152_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-5 pos0-8 pos1-0 pos1-3 pos1-4 pos2-0 pos2-4 pos2-5 pos3-0 pos3-1 pos3-4 pos3-5 pos4-1 pos4-2 pos4-3 pos4-5 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-6  - place)

  (:init
    (at-teleport pos1-4 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos3-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-5)
    (= (total-cost) 0)
  )


)