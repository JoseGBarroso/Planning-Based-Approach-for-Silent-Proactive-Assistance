(define (problem teleport-assistance6_problem_79_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-6 pos1-0 pos1-1 pos1-3 pos1-4 pos1-5 pos1-6 pos2-0 pos2-2 pos2-4 pos2-6 pos3-0 pos3-4 pos3-5 pos3-6 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos4-6 pos5-0 pos6-0 pos6-3 pos6-5  - place)

  (:init
    (at-teleport pos1-3 disabled)
    (at-teleport pos2-4 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos3-0 disabled)
    (at-teleport pos1-1 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-6)
    (= (total-cost) 0)
  )


)