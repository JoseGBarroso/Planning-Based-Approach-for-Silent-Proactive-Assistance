(define (problem teleport-assistance6_problem_192_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-1 pos2-2 pos2-3 pos2-4 pos2-6 pos3-0 pos3-1 pos4-1 pos4-2 pos4-3 pos4-4 pos4-7 pos5-3 pos5-4 pos6-8  - place)

  (:init
    (at-teleport pos5-4 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos1-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-4)
    (= (total-cost) 0)
  )


)