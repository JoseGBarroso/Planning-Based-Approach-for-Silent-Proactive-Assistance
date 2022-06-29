(define (problem teleport-assistance6_problem_157_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos1-0 pos1-2 pos1-3 pos2-0 pos2-3 pos3-0 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-3  - place)

  (:init
    (at-teleport pos4-2 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos5-1 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos4-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)