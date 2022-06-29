(define (problem teleport-assistance6_problem_101_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-1 pos0-2 pos0-3 pos1-1 pos2-0 pos2-1 pos3-0 pos3-2 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-3 pos6-0 pos6-2 pos6-3 pos7-0 pos7-1 pos7-2 pos7-3  - place)

  (:init
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos2-0 pos2-1 )
    (adj-walk pos2-1 pos2-0 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-3 pos5-3 )
    (adj-walk pos5-3 pos4-3 )
    (adj-walk pos5-0 pos6-0 )
    (adj-walk pos6-0 pos5-0 )
    (adj-walk pos5-3 pos6-3 )
    (adj-walk pos6-3 pos5-3 )
    (adj-walk pos6-0 pos7-0 )
    (adj-walk pos7-0 pos6-0 )
    (adj-walk pos6-2 pos6-3 )
    (adj-walk pos6-3 pos6-2 )
    (adj-walk pos6-2 pos7-2 )
    (adj-walk pos7-2 pos6-2 )
    (adj-walk pos6-3 pos7-3 )
    (adj-walk pos7-3 pos6-3 )
    (adj-walk pos7-0 pos7-1 )
    (adj-walk pos7-1 pos7-0 )
    (adj-walk pos7-1 pos7-2 )
    (adj-walk pos7-2 pos7-1 )
    (adj-walk pos7-2 pos7-3 )
    (adj-walk pos7-3 pos7-2 )

    (at-prime pos0-2)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-1)))
  (:metric minimize (total-cost))

)