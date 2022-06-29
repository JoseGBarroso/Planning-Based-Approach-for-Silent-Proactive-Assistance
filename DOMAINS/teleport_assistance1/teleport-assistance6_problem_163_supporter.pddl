(define (problem teleport-assistance6_problem_163_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-4 pos0-5 pos1-0 pos1-1 pos1-5 pos2-0 pos2-3 pos2-4 pos2-5 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5  - place)

  (:init
    (at-teleport pos2-5 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos0-5 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos1-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-3)
    (= (total-cost) 0)
  )


)