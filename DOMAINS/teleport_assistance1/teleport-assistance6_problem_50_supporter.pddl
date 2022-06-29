(define (problem teleport-assistance6_problem_50_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-4 pos0-6 pos0-7 pos0-8 pos0-9 pos1-0 pos1-1 pos1-4 pos1-5 pos1-6 pos1-8 pos1-9 pos2-1 pos2-2 pos2-3 pos2-5 pos2-6 pos2-7 pos2-8 pos2-9 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-7  - place)

  (:init
    (at-teleport pos1-6 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos0-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-8)
    (= (total-cost) 0)
  )


)