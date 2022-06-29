(define (problem teleport-assistance6_problem_8_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-6 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-7 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-7 pos2-8 pos3-2 pos3-5 pos3-6 pos3-7 pos3-8  - place)

  (:init
    (at-teleport pos1-1 disabled)
    (at-teleport pos0-6 disabled)
    (at-teleport pos3-6 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-7)
    (= (total-cost) 0)
  )


)