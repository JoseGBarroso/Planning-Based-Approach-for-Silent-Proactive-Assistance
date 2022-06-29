(define (problem teleport-assistance6_problem_92_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-2 pos0-5 pos0-6 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-6 pos1-7 pos2-0 pos2-1 pos2-2 pos2-3 pos2-5 pos2-6 pos2-7 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5  - place)

  (:init
    (at-teleport pos2-5 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos0-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-6)
    (= (total-cost) 0)
  )


)