(define (problem teleport-assistance6_problem_119_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-8 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-6 pos2-0 pos2-2 pos2-4 pos2-6 pos2-8 pos3-1 pos3-2 pos3-6 pos3-8 pos4-0 pos4-1 pos4-2 pos4-5 pos4-6 pos4-8 pos5-0 pos5-1 pos5-2 pos5-3 pos5-6 pos5-7 pos6-2 pos6-5 pos6-7 pos7-0 pos7-2 pos7-3 pos7-5 pos7-7 pos7-8  - place)

  (:init
    (at-teleport pos0-1 disabled)
    (at-teleport pos4-8 disabled)
    (at-teleport pos6-2 disabled)
    (at-teleport pos7-7 disabled)
    (at-teleport pos3-6 disabled)
    (at-teleport pos3-2 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-1)
    (= (total-cost) 0)
  )


)