(define (problem teleport-assistance6_problem_58_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-5 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-0 pos2-1 pos2-5 pos3-0 pos3-3 pos3-5  - place)

  (:init
    (at-teleport pos2-5 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos3-5 disabled)
    (at-teleport pos1-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)