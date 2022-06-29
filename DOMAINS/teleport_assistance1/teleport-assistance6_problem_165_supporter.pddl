(define (problem teleport-assistance6_problem_165_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-4 pos1-1 pos1-2 pos1-3 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos3-4 pos3-7 pos4-3  - place)

  (:init
    (at-teleport pos1-3 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos0-0 disabled)
    (at-teleport pos2-5 disabled)
    (at-teleport pos4-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-7)
    (= (total-cost) 0)
  )


)