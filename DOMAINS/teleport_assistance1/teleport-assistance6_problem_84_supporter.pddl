(define (problem teleport-assistance6_problem_84_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-6 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos2-0 pos2-1 pos2-2 pos2-3 pos2-6 pos3-1 pos3-3 pos3-6 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos4-6 pos5-2 pos5-3 pos5-4 pos5-5  - place)

  (:init
    (at-teleport pos5-5 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos5-3 disabled)
    (at-teleport pos1-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)