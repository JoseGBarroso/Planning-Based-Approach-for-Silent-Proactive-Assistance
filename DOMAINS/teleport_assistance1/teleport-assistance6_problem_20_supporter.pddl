(define (problem teleport-assistance6_problem_20_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-3 pos1-0 pos1-1 pos1-3 pos1-5 pos1-7 pos2-2 pos2-3 pos2-4 pos2-6 pos3-2 pos3-3 pos3-4 pos3-7 pos3-8 pos4-0 pos4-2 pos4-4 pos4-7 pos5-0 pos5-1 pos5-2 pos5-4 pos5-5 pos5-7  - place)

  (:init
    (at-teleport pos5-1 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos3-7 disabled)
    (at-teleport pos2-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)