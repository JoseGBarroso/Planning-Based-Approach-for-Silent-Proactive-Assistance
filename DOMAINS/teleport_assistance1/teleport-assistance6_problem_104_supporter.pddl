(define (problem teleport-assistance6_problem_104_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos1-0 pos1-1 pos1-3 pos4-4 pos5-0 pos6-0 pos7-0 pos7-1 pos7-2 pos7-3 pos8-0 pos8-1 pos8-3 pos8-4  - place)

  (:init
    (at-teleport pos8-1 disabled)
    (at-teleport pos0-1 disabled)
    (at-teleport pos1-0 disabled)
    (at-teleport pos6-0 disabled)
    (at-teleport pos1-1 disabled)
    (at-teleport pos7-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos8-4)
    (= (total-cost) 0)
  )


)