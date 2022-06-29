(define (problem teleport-assistance6_problem_26_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-7 pos0-8 pos1-0 pos1-5 pos1-6 pos1-7 pos2-4 pos2-5 pos2-6 pos2-7 pos3-3 pos3-4 pos4-4 pos4-5 pos4-6  - place)

  (:init
    (at-teleport pos3-3 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos0-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-6)
    (= (total-cost) 0)
  )


)