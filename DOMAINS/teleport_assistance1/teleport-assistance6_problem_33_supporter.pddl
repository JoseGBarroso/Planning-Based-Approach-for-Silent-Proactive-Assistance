(define (problem teleport-assistance6_problem_33_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-3 pos0-4 pos0-5 pos1-0 pos1-4 pos1-7 pos1-8 pos1-9 pos2-0 pos2-1 pos2-4 pos2-5 pos2-8 pos3-1 pos3-2 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8  - place)

  (:init
    (at-teleport pos1-0 disabled)
    (at-teleport pos1-8 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos3-7 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-5)
    (= (total-cost) 0)
  )


)