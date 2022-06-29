(define (problem teleport-assistance6_problem_6_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos1-2 pos1-3 pos1-4 pos2-0 pos2-1 pos2-3 pos3-1 pos3-3 pos3-4 pos4-1 pos4-2 pos4-3  - place)

  (:init
    (at-teleport pos4-1 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos4-2 disabled)
    (at-teleport pos2-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-4)
    (= (total-cost) 0)
  )


)