(define (problem teleport-assistance6_problem_111_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-6 pos1-0 pos1-1 pos1-2 pos1-5 pos1-6 pos2-2 pos2-3 pos2-4 pos2-6 pos3-1 pos3-4 pos3-5 pos3-6 pos4-0 pos4-3 pos4-4 pos4-5  - place)

  (:init
    (at-teleport pos3-6 disabled)
    (at-teleport pos0-6 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


)