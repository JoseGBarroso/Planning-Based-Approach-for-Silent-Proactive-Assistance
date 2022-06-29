(define (problem teleport-assistance6_problem_103_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos1-7 pos2-3 pos3-1 pos3-3 pos3-5 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos6-0 pos6-1  - place)

  (:init
    (at-teleport pos3-3 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos4-3 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos1-7 disabled)
    (at-teleport pos3-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-3)
    (= (total-cost) 0)
  )


)