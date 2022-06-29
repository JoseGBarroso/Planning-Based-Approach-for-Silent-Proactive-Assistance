(define (problem teleport-assistance6_problem_146_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos0-7 pos1-0 pos1-2 pos1-5 pos1-6 pos1-7 pos1-8 pos2-0 pos2-2 pos2-3 pos2-4 pos2-5 pos2-7 pos2-8 pos3-0 pos3-2 pos3-4 pos3-6  - place)

  (:init
    (at-teleport pos0-7 disabled)
    (at-teleport pos2-2 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos1-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos2-8)
    (= (total-cost) 0)
  )


)