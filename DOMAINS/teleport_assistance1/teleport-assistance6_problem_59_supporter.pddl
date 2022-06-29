(define (problem teleport-assistance6_problem_59_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos1-0 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-2 pos6-0 pos6-1 pos6-2 pos6-3 pos7-0 pos7-1 pos7-2 pos7-3 pos8-0 pos8-1 pos8-2 pos8-3  - place)

  (:init
    (at-teleport pos2-1 disabled)
    (at-teleport pos7-1 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos8-1 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos6-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos8-0)
    (= (total-cost) 0)
  )


)