(define (problem teleport-assistance6_problem_131_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-3 pos0-4 pos0-7 pos0-8 pos1-1 pos1-2 pos1-3 pos1-4 pos1-6 pos1-8 pos1-9 pos2-0 pos2-1 pos2-4 pos2-6 pos2-7 pos2-8 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos3-9  - place)

  (:init
    (at-teleport pos2-7 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos2-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-9)
    (= (total-cost) 0)
  )


)