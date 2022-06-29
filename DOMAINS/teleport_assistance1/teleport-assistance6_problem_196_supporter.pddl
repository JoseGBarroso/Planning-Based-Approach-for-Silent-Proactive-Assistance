(define (problem teleport-assistance6_problem_196_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos0-5 pos0-6 pos0-7 pos1-1 pos1-7 pos2-2 pos2-3 pos2-5 pos2-6 pos2-7 pos3-1 pos3-3 pos3-4 pos3-5 pos4-0 pos4-3 pos4-5 pos5-1 pos5-5 pos5-6 pos5-7  - place)

  (:init
    (at-teleport pos4-0 disabled)
    (at-teleport pos2-6 disabled)
    (at-teleport pos2-5 disabled)
    (at-teleport pos5-7 disabled)
    (at-teleport pos5-6 disabled)
    (at-teleport pos2-7 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-7)
    (= (total-cost) 0)
  )


)