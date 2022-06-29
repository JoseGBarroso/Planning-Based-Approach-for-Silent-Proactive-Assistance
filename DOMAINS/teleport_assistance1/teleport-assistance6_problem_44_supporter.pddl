(define (problem teleport-assistance6_problem_44_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos1-0 pos1-1 pos1-3 pos2-1 pos2-3 pos2-4 pos2-5 pos2-6 pos3-0 pos3-1 pos3-2 pos3-5 pos4-0 pos4-6 pos5-0  - place)

  (:init
    (at-teleport pos2-6 disabled)
    (at-teleport pos2-1 disabled)
    (at-teleport pos2-5 disabled)
    (at-teleport pos0-0 disabled)
    (at-teleport pos1-3 disabled)
    (at-teleport pos3-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-4)
    (= (total-cost) 0)
  )


)