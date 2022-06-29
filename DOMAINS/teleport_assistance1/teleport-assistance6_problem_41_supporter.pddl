(define (problem teleport-assistance6_problem_41_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-3 pos0-6 pos0-7 pos0-8 pos1-3 pos1-6 pos1-8 pos2-5 pos2-6 pos3-1 pos3-5 pos3-7 pos3-8  - place)

  (:init
    (at-teleport pos0-3 disabled)
    (at-teleport pos0-8 disabled)
    (at-teleport pos2-6 disabled)
    (at-teleport pos1-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-5)
    (= (total-cost) 0)
  )


)