(define (problem teleport-assistance6_problem_121_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-6 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos2-1 pos2-5 pos2-6 pos3-0 pos3-2 pos3-3 pos3-6 pos3-7 pos4-0 pos4-1 pos4-2 pos4-4 pos4-5 pos4-6 pos4-7  - place)

  (:init
    (at-teleport pos1-0 disabled)
    (at-teleport pos4-4 disabled)
    (at-teleport pos1-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos1-1)
    (= (total-cost) 0)
  )


)