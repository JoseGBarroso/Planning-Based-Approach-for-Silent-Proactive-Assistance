(define (problem teleport-assistance6_problem_122_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-7 pos0-8 pos0-9 pos1-2 pos1-3 pos1-4 pos1-7 pos1-8 pos1-9 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos2-9 pos3-4 pos3-5 pos3-6 pos3-7 pos3-8 pos3-9  - place)

  (:init
    (at-teleport pos3-7 disabled)
    (at-teleport pos3-6 disabled)
    (at-teleport pos0-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


)