(define (problem teleport-assistance6_problem_176_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-3 pos0-4 pos0-5 pos1-0 pos1-1 pos1-2 pos1-4 pos1-5 pos2-2 pos2-4 pos3-1 pos3-2 pos3-3 pos3-4 pos4-0 pos4-1 pos4-3 pos4-4 pos4-5  - place)

  (:init
    (at-teleport pos1-4 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos4-5 disabled)
    (at-teleport pos4-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-2)
    (= (total-cost) 0)
  )


)