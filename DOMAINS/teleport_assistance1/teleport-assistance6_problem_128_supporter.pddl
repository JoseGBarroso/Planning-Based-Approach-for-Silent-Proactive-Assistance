(define (problem teleport-assistance6_problem_128_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-3 pos0-4 pos0-5 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-0 pos2-2 pos2-3 pos2-4 pos2-5 pos3-1 pos3-2 pos3-3 pos3-4  - place)

  (:init
    (at-teleport pos1-1 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos0-3 disabled)
    (at-teleport pos3-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-0)
    (= (total-cost) 0)
  )


)