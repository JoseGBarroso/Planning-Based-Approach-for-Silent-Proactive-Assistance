(define (problem teleport-assistance6_problem_85_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-4 pos1-1 pos1-2 pos1-3 pos1-4 pos2-0 pos2-1 pos2-3 pos2-4 pos2-5 pos3-2 pos3-3 pos3-6 pos3-7  - place)

  (:init
    (at-teleport pos2-5 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos0-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-2)
    (= (total-cost) 0)
  )


)