(define (problem teleport-assistance6_problem_172_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-5 pos0-6 pos0-7 pos1-2 pos1-5 pos1-6 pos1-7 pos1-8 pos2-2 pos2-4 pos2-5 pos2-6 pos2-7 pos3-0 pos3-2 pos4-5 pos4-6 pos4-8  - place)

  (:init
    (at-teleport pos1-5 disabled)
    (at-teleport pos1-7 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos0-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-4)
    (= (total-cost) 0)
  )


)