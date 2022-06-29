(define (problem teleport-assistance6_problem_29_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos0-6 pos0-7 pos0-8 pos1-0 pos1-1 pos1-2 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos2-2 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos3-0 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8 pos4-0 pos4-3 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8  - place)

  (:init
    (at-teleport pos2-2 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos3-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-1)
    (= (total-cost) 0)
  )


)