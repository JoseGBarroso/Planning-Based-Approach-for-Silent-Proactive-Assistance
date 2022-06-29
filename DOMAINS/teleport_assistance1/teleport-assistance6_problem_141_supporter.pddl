(define (problem teleport-assistance6_problem_141_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-4 pos1-1 pos1-2 pos1-3 pos1-5 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2 pos3-4 pos3-5 pos4-4 pos5-3 pos5-4 pos6-0 pos6-5 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos7-5 pos8-0 pos8-3 pos8-5  - place)

  (:init
    (at-teleport pos3-0 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos7-4 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos7-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos8-0)
    (= (total-cost) 0)
  )


)