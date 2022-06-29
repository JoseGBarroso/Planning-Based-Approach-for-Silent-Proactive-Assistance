(define (problem teleport-assistance6_problem_150_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos1-0 pos1-1 pos2-1 pos2-3 pos3-1 pos4-0 pos4-1 pos4-2  - place)

  (:init
    (at-teleport pos4-1 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-0)
    (= (total-cost) 0)
  )


)