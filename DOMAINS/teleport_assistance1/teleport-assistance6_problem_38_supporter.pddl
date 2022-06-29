(define (problem teleport-assistance6_problem_38_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-3 pos0-6 pos0-7 pos0-8 pos1-1 pos1-4 pos1-6 pos1-7 pos1-8 pos2-0 pos2-1 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos3-1 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7  - place)

  (:init
    (at-teleport pos2-5 disabled)
    (at-teleport pos0-3 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos1-7 disabled)
    (at-teleport pos1-8 disabled)
    (at-teleport pos3-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-4)
    (= (total-cost) 0)
  )


)