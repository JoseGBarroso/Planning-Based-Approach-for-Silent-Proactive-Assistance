(define (problem teleport-assistance6_problem_68_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-4 pos1-0 pos1-1 pos1-2 pos1-3 pos1-6 pos2-1 pos3-0 pos3-1 pos3-6 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5  - place)

  (:init
    (at-teleport pos4-5 disabled)
    (at-teleport pos4-1 disabled)
    (at-teleport pos0-4 disabled)
    (at-teleport pos0-2 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos3-6 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos4-4)
    (= (total-cost) 0)
  )


)