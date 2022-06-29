(define (problem teleport-assistance6_problem_126_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-3 pos1-0 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-3 pos3-0 pos3-1 pos3-2 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-2 pos5-3  - place)

  (:init
    (at-teleport pos3-2 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos4-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-3)
    (= (total-cost) 0)
  )


)