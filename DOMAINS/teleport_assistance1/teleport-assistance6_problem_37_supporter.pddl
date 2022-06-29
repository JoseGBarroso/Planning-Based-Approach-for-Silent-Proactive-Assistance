(define (problem teleport-assistance6_problem_37_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-4 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-0 pos2-1 pos2-2 pos2-4 pos2-5 pos3-0 pos3-2 pos3-3 pos3-4 pos3-5 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos5-0 pos5-1 pos5-3 pos5-5  - place)

  (:init
    (at-teleport pos3-5 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos1-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)