(define (problem teleport-assistance6_problem_185_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-3 pos0-4 pos1-4 pos1-5 pos1-6 pos2-3 pos2-6 pos3-3 pos3-6 pos4-2 pos4-3 pos4-4 pos4-5 pos4-6 pos5-3 pos5-4 pos5-6  - place)

  (:init
    (at-teleport pos4-3 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos2-3 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos0-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-2)
    (= (total-cost) 0)
  )


)