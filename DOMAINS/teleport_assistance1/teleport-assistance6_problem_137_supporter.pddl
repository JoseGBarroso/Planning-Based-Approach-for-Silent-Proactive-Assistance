(define (problem teleport-assistance6_problem_137_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos1-1 pos1-4 pos2-0 pos2-1 pos2-2 pos2-4 pos3-0 pos3-3 pos3-4 pos4-2 pos4-3 pos4-4 pos5-0 pos5-2 pos5-3 pos5-4 pos6-3 pos6-4 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4  - place)

  (:init
    (at-teleport pos7-4 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos7-1 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos4-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-0)
    (= (total-cost) 0)
  )


)