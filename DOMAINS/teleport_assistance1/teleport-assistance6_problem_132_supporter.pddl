(define (problem teleport-assistance6_problem_132_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos2-3 pos2-4 pos2-5 pos2-6 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos4-0 pos4-1 pos4-3 pos4-4 pos5-0 pos5-1 pos6-3 pos7-1  - place)

  (:init
    (at-teleport pos0-7 disabled)
    (at-teleport pos0-5 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos4-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-0)
    (= (total-cost) 0)
  )


)