(define (problem teleport-assistance6_problem_56_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos1-1 pos1-3 pos1-4 pos1-5 pos1-6 pos2-0 pos2-2 pos2-3 pos2-5 pos2-6 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6  - place)

  (:init
    (at-teleport pos1-1 disabled)
    (at-teleport pos1-5 disabled)
    (at-teleport pos1-4 disabled)
    (at-teleport pos3-3 disabled)
    (at-teleport pos2-5 disabled)
    (at-teleport pos3-5 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos0-6)
    (= (total-cost) 0)
  )


)