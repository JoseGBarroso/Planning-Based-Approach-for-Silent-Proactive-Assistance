(define (problem teleport-assistance6_problem_93_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-6 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos1-9 pos2-0 pos2-1 pos2-2 pos2-3 pos2-5 pos2-7 pos3-0 pos3-5 pos3-6 pos3-8 pos4-8 pos4-9  - place)

  (:init
    (at-teleport pos1-1 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos1-2 disabled)
    (at-teleport pos3-8 disabled)
    (at-teleport pos4-8 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos3-6)
    (= (total-cost) 0)
  )


)