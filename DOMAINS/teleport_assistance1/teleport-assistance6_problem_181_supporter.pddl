(define (problem teleport-assistance6_problem_181_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-3 pos0-4 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos2-3 pos2-5 pos2-6 pos2-7 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos4-0 pos5-0 pos5-5 pos5-7  - place)

  (:init
    (at-teleport pos3-1 disabled)
    (at-teleport pos0-3 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos3-4 disabled)
    (at-teleport pos5-0 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos5-0)
    (= (total-cost) 0)
  )


)