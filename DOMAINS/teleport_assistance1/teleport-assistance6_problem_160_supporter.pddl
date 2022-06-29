(define (problem teleport-assistance6_problem_160_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-4 pos0-6 pos1-1 pos1-4 pos1-5 pos2-4 pos2-6 pos3-0 pos3-1 pos3-5 pos3-6 pos4-1 pos4-3 pos4-5 pos5-0 pos5-1 pos5-2 pos5-6 pos6-2 pos6-3 pos6-4 pos7-4 pos7-5 pos8-5 pos9-0  - place)

  (:init
    (at-teleport pos6-4 disabled)
    (at-teleport pos3-5 disabled)
    (at-teleport pos4-1 disabled)
    (at-teleport pos2-4 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


)