(define (problem teleport-assistance6_problem_71_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-4 pos0-5 pos0-7 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-0 pos2-1 pos2-4 pos2-5 pos2-6 pos3-0 pos3-4 pos3-5 pos3-6  - place)

  (:init
    (at-teleport pos1-1 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos2-0 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos1-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-5)
    (= (total-cost) 0)
  )


)