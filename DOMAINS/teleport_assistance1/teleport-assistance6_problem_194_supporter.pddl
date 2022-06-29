(define (problem teleport-assistance6_problem_194_supporter)
  (:domain teleport-assistance6_supporter)
  (:objects
    pos0-1 pos0-5 pos1-1 pos1-2 pos1-3 pos1-5 pos1-6 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos3-0 pos3-1 pos3-4 pos4-0 pos4-1 pos4-2 pos4-4 pos5-0 pos5-1 pos5-2 pos5-4 pos6-1 pos6-2 pos6-4  - place)

  (:init
    (at-teleport pos1-2 disabled)
    (at-teleport pos5-0 disabled)
    (at-teleport pos4-0 disabled)
    (at-teleport pos1-6 disabled)
    (at-teleport pos2-3 disabled)
    (teleport_origin_can_be_activated)
    (teleport_destination_can_be_activated)

    (at-prime pos6-4)
    (= (total-cost) 0)
  )


)