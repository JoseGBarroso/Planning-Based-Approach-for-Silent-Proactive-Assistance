(define (problem teleport-assistance6_problem_81_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-4 pos0-6 pos0-7 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-7 pos2-0 pos2-3 pos2-4 pos3-0 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos4-0 pos4-2 pos4-3 pos4-4 pos4-5 pos5-5 pos5-6 pos6-1 pos6-2 pos6-3 pos6-6 pos6-7 pos7-0 pos7-1 pos7-3 pos7-4 pos7-6 pos8-1 pos8-3 pos8-4 pos8-5 pos8-6 pos9-2 pos9-3 pos9-5  - place)

  (:init
    (at-teleport pos3-7 disabled)
    (at-teleport pos0-6 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos6-6 disabled)
    (at-teleport pos3-6 disabled)
    (at-teleport pos2-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos8-1)
    (= (total-cost) 0)
  )


)