(define (problem teleport-assistance6_problem_184_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos1-1 pos1-3 pos1-4 pos1-7 pos2-0 pos2-2 pos2-4 pos2-6 pos2-7 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos4-1 pos4-2 pos4-5 pos4-7 pos5-0 pos5-1 pos5-3 pos5-5 pos5-6 pos6-0 pos6-1 pos6-4 pos6-5 pos6-6 pos7-0 pos7-2 pos7-5 pos8-0 pos8-1 pos8-2 pos8-5 pos8-7  - place)

  (:init
    (at-teleport pos5-1 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos3-1 disabled)
    (at-teleport pos4-1 disabled)
    (at-teleport pos7-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos7-0)
    (= (total-cost) 0)
  )


)