(define (problem teleport-assistance6_problem_149_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos1-0 pos1-4 pos2-0 pos2-1 pos2-3 pos2-4 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos4-0 pos4-1 pos4-2 pos4-4 pos5-1  - place)

  (:init
    (at-teleport pos1-0 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos3-2 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos3-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-4)
    (= (total-cost) 0)
  )


)